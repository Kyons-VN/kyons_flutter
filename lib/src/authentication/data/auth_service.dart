import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logging/logging.dart';
import 'package:shared_package/shared_package.dart';

import '../../authentication/domain/i_auth.dart';
import '../../authentication/domain/value_objects.dart';
import '../../core/data/api.dart';
import '../../core/data/shared.dart';
import '../../knowledge/domain/i_knowledge.dart';
import 'auth_entities.dart';
// import 'dart' as auth_service;
import 'user_dto.dart';

part 'auth_service.fp.dart';

Logger _log = Logger('auth_api.dart');

class AuthApi implements IAuthApi {
  final Dio api;
  final String hostName;
  final Api apiService;
  final SharedRefService sharedService;
  // define a final function to save redirect path
  final Unit Function(String) saveRedirecPath;
  AuthApi(
      {required this.saveRedirecPath,
      required this.api,
      required this.apiService,
      required this.hostName,
      required this.sharedService});

  @override
  Future<Unit> signInEmailPassword({
    required EmailAddress email,
    required String password,
  }) async {
    final response = api.post('/auth/sign_in', data: {
      'username': email.getValueOrError(),
      'password': password,
    });
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['error'] != null) {
        return Future.error(const AuthFailure.invalidEmailPassword());
      }

      final token = data['access_token'];
      if (token != null) await setToken(token);
      final refreshToken = data['refresh_token'];
      if (refreshToken != null) await setRefreshToken(refreshToken);
      final uuid = data['sub'];
      if (uuid != null) await saveId(uuid);
      final redirectAfterLogin = data['redirect_after_auth'];
      if (redirectAfterLogin != null) saveRedirecPath(redirectAfterLogin);
      return unit;
    });
  }

  @override
  Future<User> getUser() async {
    final token = await getToken();
    final id = await getId();
    // final intercepter = Api();
    final response = apiService.api.get('/auth/get_user',
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
    apiService.clear();
    return await storage.deleteAll().then((value) => unit);
  }

  @override
  Future<User> getCurrentUser() async {
    // final SharedRefService sharedService = SharedRefService();
    final prefs = await sharedService.get();
    final userPref = prefs.getString('user');
    return UserDto.fromJson(jsonDecode(userPref!)).toDomain();
  }

  @override
  Future<StudyType> getStudyType() async {
    return (await getCurrentUser()).studyType;
  }

  @override
  Future<Unit> setCurrentUser(User user) async {
    // final SharedRefService sharedService = SharedRefService();
    final prefs = await sharedService.get();
    return await prefs.setString('user', jsonEncode(user.toDto().toJson())).then((value) => unit);
  }

  @override
  Future<Unit> signUp({
    // required String firstName,
    // required String lastName,
    required EmailAddress email,
    // required Phone phone,
    // required DateTime birthdate,
    // required String grade,
    // required String school,
    // required String address,
    required Password password,
  }) async {
    final res = await api.post('/auth/sign_up', data: {
      'given_name': email.getValueOrError(),
      'family_name': '_',
      'email': email.getValueOrError(),
      'phone_number': '000',
      // 'birthdate': DateFormat('yyyy-MM-dd').format(birthdate),
      // 'grade': grade,
      // 'school': school,
      // 'address': address,
      'password': password.getValueOrError(),
    });
    if (res.statusCode != 200) {
      throw DioException.badResponse(statusCode: res.statusCode!, requestOptions: res.requestOptions, response: res);
    }
    return unit;
  }

  @override
  Future<Unit> requestResetPassword(EmailAddress email) async {
    final response = api.post('/forgot_password', data: {
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
    final response = api.post('/forgot_password', data: {
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

  @override
  Future<Option<Unit>> setToken(String token) async {
    // final SharedRefService sharedService = SharedRefService();
    return await sharedService.setToken(token);
  }

  @override
  Future<String> getToken() async {
    // final SharedRefService sharedService = SharedRefService();
    return await sharedService.getToken();
  }

  Future<Unit> removeToken() async {
    // final SharedRefService sharedService = SharedRefService();
    await sharedService.removeToken();
    return unit;
  }

  @override
  Future<Option<Unit>> setRefreshToken(String token) async {
    // final SharedRefService sharedService = SharedRefService();
    return await sharedService.setRefreshToken(token);
  }

  @override
  Future<String> getRefreshToken() async {
    // final SharedRefService sharedService = SharedRefService();
    return await sharedService.getRefreshToken();
  }

  Future<Unit> removeRefreshToken() async {
    // final SharedRefService sharedService = SharedRefService();
    await sharedService.removeRefreshToken();
    return unit;
  }

  @override
  Future<Option<Unit>> saveId(String uuid) async {
    // final SharedRefService sharedService = SharedRefService();
    final result = await sharedService.saveId(uuid);
    return result;
  }

  Future<String> getId() async {
    // final SharedRefService sharedService = SharedRefService();
    final prefs = await sharedService.get();
    return prefs.getString('uuid') ?? '';
  }

  Future<Option> saveEmail(String email) async {
    // final SharedRefService sharedService = SharedRefService();
    final prefs = await sharedService.get();
    return await prefs.setString('email', email).then((value) => optionOf(value ? value : null));
  }

  Future<String> getEmail() async {
    // final SharedRefService sharedService = SharedRefService();
    final prefs = await sharedService.get();
    return Future.value(prefs.getString('email') ?? '');
  }
}
