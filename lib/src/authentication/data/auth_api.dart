import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart' as auth_service;
import 'package:kyons_flutter/src/authentication/data/user_dto.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/navigation/data/navigation_service.dart' as navigation_service;
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi implements IAuth {
  final Dio api = Dio();

  @override
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  }) async {
    final response = api.post('$serverApi/auth/sign_in', data: {
      'username': emailAddress.getValueOrError(),
      'password': password,
    });
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['error'] != null || data['role'] != 'STUDENT') {
        return Future.error(const AuthFailure.invalidEmailPassword());
      }
      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final email = data['email'] as String;
      await auth_service.saveToken(token);
      await auth_service.saveRefreshToken(refreshToken);
      await auth_service.saveEmail(email);
      final redirectAfterLogin = data['redirect_after_auth'] as String;
      await navigation_service.saveRedirecPath(redirectAfterLogin);
      return unit;
    });
  }

  @override
  Future<User> getUser() async {
    final token = await auth_service.getToken();
    final email = await auth_service.getEmail();
    // final intercepter = Api();
    final response = api.get('$serverApi/auth/get_user',
        queryParameters: {'email': email},
        options: Options(headers: {
          'Authorization': 'Bearer $token',
        }));
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['error'] != null) {
        return User.empty();
      }
      final user = UserDto.fromJson(data).toDomain();
      return user;
    });
  }

  @override
  Future<Unit> signOut() async {
    const storage = FlutterSecureStorage();
    Api.init().clear();
    return await storage.deleteAll().then((value) => unit);
  }

  @override
  Future<User> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userPref = prefs.getString('user');
    return UserDto.fromJson(jsonDecode(userPref!)).toDomain();
  }

  @override
  Future<StudyType> getStudyType() async {
    return (await getCurrentUser()).studyType;
  }

  @override
  Future<Unit> setCurrentUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString('user', jsonEncode(user.toJson())).then((value) => unit);
  }

  @override
  Future<Unit> signUp(String firstName, String lastName, EmailAddress email, String password) async {
    final response = api.post('$serverApi/sign_up', data: {
      'first_name': firstName,
      'last_name': lastName,
      'username': email.getValueOrError(),
      'password': password,
    });
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      return unit;
    });
  }
}
