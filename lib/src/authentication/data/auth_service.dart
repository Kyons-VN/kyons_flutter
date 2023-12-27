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
import '../../navigation/data/navigation_service.dart' as navigation_service;
import 'auth_entities.dart';
// import 'dart' as auth_service;
import 'user_dto.dart';

part 'auth_service.fp.dart';

Logger _log = Logger('auth_api.dart');

class AuthService implements IAuthService {
  final Dio api;
  final String hostName;
  final Api apiService;
  final SharedRefService sharedService;
  AuthService({required this.api, required this.apiService, required this.hostName, required this.sharedService});

  @override
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  }) async {
    final response = api.post('$hostName/auth/sign_in', data: {
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
      if (data['error'] != null) {
        return Future.error(const AuthFailure.invalidEmailPassword());
      }
      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final uuid = data['sub'] as String;
      await setToken(token);
      await setRefreshToken(refreshToken);
      await saveId(uuid);
      final redirectAfterLogin = data['redirect_after_auth'] as String;
      await navigation_service.saveRedirecPath(redirectAfterLogin);
      return unit;
    });
  }

  @override
  Future<User> getUser() async {
    final token = await getToken();
    final id = await getId();
    // final intercepter = Api();
    final response = api.get('$hostName/auth/get_user',
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
    await api.post('$hostName/auth/sign_up', data: {
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
    return unit;
    // return response //
    //     .then((res) {
    //   print('1');
    //   if (res.statusCode != 200) {
    //     return Future.error(const AuthFailure.serverError());
    //   }
    //   return res.data;
    // }).then((value) async {
    //   print('2');
    //   final data = value as Map<String, dynamic>;
    //   if (data['success'] == false) {
    //     return Future.error(const AuthFailure.emailAlreadyUsed());
    //   }
    //   return unit;
    // });
  }

  @override
  Future<Unit> requestResetPassword(EmailAddress email) async {
    final response = api.post('$hostName/forgot_password', data: {
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
    final response = api.post('$hostName/forgot_password', data: {
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
