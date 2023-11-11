import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logging/logging.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../boostrap/config_reader.dart';
import '../../authentication/data/auth_service.dart' as auth_service;

final serverApi = ConfigReader.serverApi();
const kAccessToken = 'access_token';
const kRefreshToken = 'refresh_token';

class Api {
  final Dio api = Dio();

  Api._() {
    api.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      // final prefs = await SharedPreferences.getInstance();
      final accessToken = await auth_service.getToken();
      if (!options.path.contains('http')) {
        options.path = '$serverApi${options.path}';
      }
      options.headers['Authorization'] = 'Bearer $accessToken';
      return handler.next(options);
    }, onError: (DioException error, handler) async {
      if ((error.response?.statusCode == 401)) {
        // if (refreshToken.isNotEmpty) {
        final prefs = await SharedPreferences.getInstance();
        final refreshToken = prefs.getString(kRefreshToken) ?? '';
        if (refreshToken.isNotEmpty) {
          final newToken = await getRefreshToken();
          if (newToken.isSome()) {
            auth_service.setToken(newToken.getOrElse(() => ''));
            error.requestOptions.headers['Authorization'] = 'Bearer $newToken';
            return handler.resolve(await _retry(error.requestOptions));
          } else {
            // refresh token is invalid
            clear();
            return handler.next(error);
          }
        }
        // }
      }
      return handler.next(error);
    }));
  }

  factory Api.init() => Api._();

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return api.request<dynamic>(requestOptions.path,
        data: requestOptions.data, queryParameters: requestOptions.queryParameters, options: options);
  }

  Future<Option<String>> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString(kRefreshToken) ?? '';
    final Dio request = Dio();
    // request.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    //   options.headers['Authorization'] = 'Bearer $refreshToken';
    //   return handler.next(options);
    // }, onError: (DioException error, handler) {
    //   return handler.next(error);
    // }));
    return await request
        .post('$serverApi/auth/refresh', options: Options(headers: {'Authorization': 'Bearer $refreshToken'}))
        .catchError((error, stackTrace) {
      _log.shout('getRefreshToken', error, stackTrace);
      // return true;
    }).then((value) {
      return some(value.data['access_token'] as String);
    }).onError((error, stackTrace) => none());
    // return response;

    // _log.info('getRefreshToken');
    // if (response.statusCode == 200) {
    //   final accessToken = response.data['access_token'];
    //   return some(accessToken);
    // } else {
    //   return none();
    // }
  }

  clear() {
    auth_service.removeRefreshToken();
  }
}

ApiFailure handleError(error, StackTrace stackTrace) {
  _log.shout('ApiFailure handleError', error, stackTrace);
  if (error is ApiFailure) {
    return error;
  } else if (error is DioException) {
    if (error.response?.statusCode == 400 && error.response != null) {
      if (error.response!.data['error_code'] == 'SubscriptionExpired') {
        return const ApiFailure.subscriptionExpired();
      } else if (error.response!.data['error_code'] == 'RanOutMockTest') {
        return const ApiFailure.ranOutMockTest();
      } else if (error.response!.statusCode == 401) {
        return const ApiFailure.unAuthenticated();
      }
    }
  }
  return const ApiFailure.serverError();
}

ClientFailure handleClientError(error, StackTrace stackTrace) {
  _log.info('ClientFailure handleError');

  if (error is ClientFailure) return error;
  return const ClientFailure.storage();
}

dynamic handleResponseError(Response<dynamic> res) {
  if (res.statusCode != 200) {
    _log.info('handleResponseError');
    return Future.error(const ApiFailure.serverError());
  }
  return res.data;
}

Logger _log = Logger('main_dev.dart');
