import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/core/data/shared.dart';
import 'package:logging/logging.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Api {
  final SharedRefService sharedService;
  final Dio api = Dio();
  final String hostName;

  Api._({required this.sharedService, required this.hostName}) {
    final serverApi = ConfigReader.serverApi();
    api.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      // final prefs = await SharedPreferences.getInstance();
      final accessToken = await sharedService.getToken();
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
            sharedService.setToken(newToken.getOrElse(() => ''));
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

  factory Api.init(WidgetRef ref) => Api._(sharedService: ref.read(sharedRef), hostName: ConfigReader.serverApi());

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
        .post('$hostName/auth/refresh', options: Options(headers: {'Authorization': 'Bearer $refreshToken'}))
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
    sharedService.removeRefreshToken();
  }
}

// class ApiFailure {
//   final String message;
//   const ApiFailure._(this.message);

//   factory ApiFailure.serverError() => const ApiFailure._('Server error');
//   factory ApiFailure.unAuthenticated() => const ApiFailure._('Unauthenticated');
//   factory ApiFailure.subscriptionExpired() => const ApiFailure._('SubscriptionExpired');
//   factory ApiFailure.ranOutMockTest() => const ApiFailure._('RanOutMockTest');
// }

ApiFailure handleError(error, StackTrace stackTrace) {
  _log.shout('ApiFailure handleError', error, stackTrace);
  if (error is ApiFailure) {
    return error;
  } else if (error is DioException) {
    if (error.response?.statusCode == 400 && error.response != null) {
      if (error.response!.data['error_code'] == 'SubscriptionExpired') {
        return ApiFailure.subscriptionExpired();
      } else if (error.response!.data['error_code'] == 'RanOutMockTest') {
        return ApiFailure.ranOutMockTest();
      } else if (error.response!.statusCode == 401) {
        return ApiFailure.unAuthenticated();
      }
    }
  }
  return ApiFailure.serverError();
}

ClientFailure handleClientError(error, StackTrace stackTrace) {
  _log.info('ClientFailure handleError');

  if (error is ClientFailure) return error;
  return const ClientFailure.storage();
}

dynamic handleResponseError(Response<dynamic> res) {
  if (res.statusCode != 200) {
    _log.info('handleResponseError');
    return Future.error(ApiFailure.serverError());
  }
  return res.data;
}

Logger _log = Logger('api.dart');

// final apiProvider = Provider<Api>((ref) => Api.init(ref as WidgetRef));
