import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:logging/logging.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serverApi = ConfigReader.serverApi();

class Api {
  final Dio api = Dio();
  String accessToken = '';
  String refreshToken = '';

  final _storage = const FlutterSecureStorage();

  Api._() {
    api.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      final prefs = await SharedPreferences.getInstance();
      accessToken = prefs.getString('token') ?? '';
      if (!options.path.contains('http')) {
        options.path = '$serverApi${options.path}';
      }
      options.headers['Authorization'] = 'Bearer $accessToken';
      return handler.next(options);
    }, onError: (DioError error, handler) async {
      if ((error.response?.statusCode == 401)) {
        if (refreshToken.isEmpty) {
          final prefs = await SharedPreferences.getInstance();
          refreshToken = prefs.getString('refreshToken') ?? '';
          if (refreshToken.isEmpty) {
            if (await getRefreshToken()) {
              return handler.resolve(await _retry(error.requestOptions));
            }
          }
        }
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

  Future<bool> getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString('refreshToken') ?? '';
    final response = await api.post('/auth/refresh', data: {'refreshToken': refreshToken});

    if (response.statusCode == 201) {
      accessToken = response.data;
      return true;
    } else {
      // refresh token is wrong
      clear();
      _storage.deleteAll();
      return false;
    }
  }

  clear() {
    accessToken = '';
    refreshToken = '';
  }
}

ApiFailure handleError(error, StackTrace stackTrace) {
  _log.info('ApiFailure handleError');
  if (error is ApiFailure) {
    return error;
  } else if (error is DioError) {
    if (error.response?.statusCode == 400 && error.response != null) {
      if (error.response!.data['error_code'] == 'SubscriptionExpired') {
        return const ApiFailure.subscriptionExpired();
      } else if (error.response!.data['error_code'] == 'RanOutMockTest') {
        return const ApiFailure.ranOutMockTest();
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
