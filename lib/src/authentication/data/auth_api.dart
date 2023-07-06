import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/data/user_dto.dart';
import '../../authentication/domain/i_auth.dart';
import '../../authentication/domain/user.dart';
import '../../authentication/domain/value_objects.dart';
import '../../core/data/api.dart';
import '../../knowledge/domain/i_knowledge.dart';
import '../../navigation/data/navigation_service.dart' as navigation_service;

class AuthApi implements IAuthApi {
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
      final uuid = data['sub'] as String;
      await auth_service.setToken(token);
      await auth_service.setRefreshToken(refreshToken);
      await auth_service.saveId(uuid);
      final redirectAfterLogin = data['redirect_after_auth'] as String;
      await navigation_service.saveRedirecPath(redirectAfterLogin);
      return unit;
    });
  }

  @override
  Future<User> getUser() async {
    final token = await auth_service.getToken();
    final id = await auth_service.getId();
    // final intercepter = Api();
    final response = api.get('$serverApi/auth/get_user',
        queryParameters: {'id': id},
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
  Future<Unit> signUp({
    required String firstName,
    required String lastName,
    required EmailAddress email,
    required Phone phone,
    required DateTime birthdate,
    required String grade,
    required String school,
    required String address,
  }) async {
    final response = api.post('$serverApi/auth/sign_up', data: {
      'given_name': firstName,
      'family_name': lastName,
      'email': email.getValueOrError(),
      'phone_number': phone.getValueOrError(),
      'birthdate': DateFormat('yyyy-MM-dd').format(birthdate),
      'grade': grade,
      'school': school,
      'address': address,
    });
    return response.then((res) {
      print(res);
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['success'] == false) {
        return Future.error(const AuthFailure.emailAlreadyUsed());
      }
      return unit;
    });
  }

  @override
  Future<Unit> requestResetPassword(EmailAddress email) async {
    final response = api.post('$serverApi/forgot_password', data: {
      'email': email.getValueOrError(),
    });
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['success'] == false) {
        return Future.error(const AuthFailure.emailNotFound());
      }
      return unit;
    });
  }

  @override
  Future<Unit> newPassword({required EmailAddress email, required Password password, required String code}) {
    final response = api.post('$serverApi/forgot_password', data: {
      'email': email.getValueOrError(),
      'password': password.getValueOrError(),
      'code': code,
    });
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['success'] == false) {
        return Future.error(const AuthFailure.invalidCode());
      }
      return unit;
    });
  }
}
