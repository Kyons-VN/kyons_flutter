import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/data/user_dto.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/navigation/data/navigation_service.dart' as navigation_service;
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:kyons_flutter/src/authentication/domain/user.dart';

import '../domain/i_auth.dart';
// import '../domain/value_objects.dart';

// Future<String> getCurrentUserId() async {
//   final prefs = await SharedPreferences.getInstance();
//   final userPref = prefs.getString('user');
//   if (userPref == null) {
//     return '';
//   } else {
//     return UserDto.fromJson(jsonDecode(userPref)).toDomain().id;
//   }
// }

Future<Option> saveToken(String token) async {
  // final prefs = await SharedPreferences.getInstance();
  const storage = FlutterSecureStorage();
  return await storage.write(key: 'token', value: token).then((value) => some(unit), onError: (error) => none());
}

Future<String> getToken() async {
  const storage = FlutterSecureStorage();
  return await storage.read(key: 'token') ?? '';
}

Future<Option> saveEmail(String email) async {
  final prefs = await SharedPreferences.getInstance();
  return await prefs.setString('email', email).then((value) => optionOf(value ? value : null));
}

Future<String> getEmail() async {
  final prefs = await SharedPreferences.getInstance();
  return Future.value(prefs.getString('email') ?? '');
}

Future<Option> saveRefreshToken(String refreshToken) async {
  const storage = FlutterSecureStorage();
  return await storage
      .write(key: 'refresh_token', value: refreshToken)
      .then((value) => some(unit), onError: (error) => none());
}

Reader<IAuth, Future<Either<AuthFailure, Unit>>> signInEmailPassword(
    {required String emailAddress, required String password}) {
  return Reader(
    (api) => _isValid(emailAddress)
        .flatMap((_) => _isNotEmpty(password))
        .flatMapTask((_) => _signIn(EmailAddress(emailAddress), password, api))
        .run(),
  );
}

IOEither<AuthFailure, String> _isValid(String email) => IOEither.fromPredicate(
      email,
      (a) => EmailAddress(a).isValid(),
      (_) => const AuthFailure.invalidEmailPassword(),
    );

IOEither<AuthFailure, String> _isNotEmpty(String password) => IOEither.fromPredicate(
      password,
      (a) => password.isNotEmpty,
      (_) => const AuthFailure.invalidEmailPassword(),
    );

TaskEither<AuthFailure, Unit> _signIn(
  EmailAddress email,
  String password,
  IAuth api,
) =>
    TaskEither.tryCatch(
      () => api.signInEmailPassword(emailAddress: email, password: password),
      (error, __) {
        if (error is AuthFailure) return error;
        return const AuthFailure.serverError();
      },
    );

Reader<IAuth, Future<Either<AuthFailure, User>>> getUser() {
  return Reader(
    (api) => _getUser(api).run(),
  );
}

TaskEither<AuthFailure, User> _getUser(
  IAuth api,
) =>
    TaskEither.tryCatch(
      () => api.getUser(),
      (error, __) {
        return const AuthFailure.serverError();
      },
    );

Reader<IAuth, Future<Either<ClientFailure, Unit>>> signOut() {
  return Reader(
    (api) => _signOut(api).run(),
  );
}

TaskEither<ClientFailure, Unit> _signOut(IAuth api) => TaskEither.tryCatch(
      () => api.signOut(),
      handleClientError,
    );

Reader<IAuth, Future<Either<ClientFailure, User>>> getCurrentUser() {
  return Reader(
    (api) => _getCurrentUser(api).run(),
  );
}

TaskEither<ClientFailure, User> _getCurrentUser(IAuth api) => TaskEither.tryCatch(
      () => api.getCurrentUser(),
      handleClientError,
    );

Reader<IAuth, Future<Either<ClientFailure, Unit>>> setCurrentUser(User user) {
  return Reader(
    (api) => _setCurrentUser(api, user).run(),
  );
}

TaskEither<ClientFailure, Unit> _setCurrentUser(IAuth api, User user) => TaskEither.tryCatch(
      () => api.setCurrentUser(user),
      handleClientError,
    );

class Auth implements IAuth {
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
      const storage = FlutterSecureStorage();
      print(storage);
      await saveToken(token);
      await saveRefreshToken(refreshToken);
      await saveEmail(email);
      print(storage);
      final redirectAfterLogin = data['redirect_after_auth'] as String;
      await navigation_service.saveRedirecPath(redirectAfterLogin);
      return unit;
    });
  }

  @override
  Future<User> getUser() async {
    final token = await getToken();
    final email = await getEmail();
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
}
