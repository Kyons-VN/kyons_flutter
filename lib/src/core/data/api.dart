import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:logging/logging.dart';

const serverApi = 'https://api.tuhoconline.org';

class Api {
  final Dio api = Dio();
  String accessToken = '';
  String refreshToken = '';

  final _storage = const FlutterSecureStorage();

  Api._() {
    api.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      if (accessToken.isEmpty) {
        accessToken = await _storage.read(key: 'token') ?? '';
      }
      if (!options.path.contains('http')) {
        options.path = '$serverApi${options.path}';
      }
      options.headers['Authorization'] = 'Bearer $accessToken';
      return handler.next(options);
    }, onError: (DioError error, handler) async {
      if ((error.response?.statusCode == 401)) {
        if (refreshToken.isEmpty) {
          refreshToken = await _storage.read(key: 'refreshToken') ?? '';
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
    final refreshToken = await _storage.read(key: 'refreshToken');
    final response = await api.post('/auth/refresh', data: {'refreshToken': refreshToken});

    if (response.statusCode == 201) {
      accessToken = response.data;
      return true;
    } else {
      // refresh token is wrong
      accessToken = '';
      _storage.deleteAll();
      return false;
    }
  }
}

ApiFailure handleError(error, StackTrace stackTrace) {
  _log.info('ApiFailure handleError');
  if (error is ApiFailure) return error;
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
