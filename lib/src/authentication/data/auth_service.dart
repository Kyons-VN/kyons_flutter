import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/data/user_dto.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:kyons_flutter/src/navigation/data/navigation_service.dart' as navigation_service;
import 'package:shared_preferences/shared_preferences.dart';

// import 'package:kyons_flutter/src/authentication/domain/user.dart';

import '../domain/i_auth.dart';
// import '../domain/value_objects.dart';

Future<Option<User>> getCurrentUser() async {
  final prefs = await SharedPreferences.getInstance();
  final userPref = prefs.getString('user');
  if (userPref == null) {
    return none();
  } else {
    return optionOf(UserDto.fromJson(jsonDecode(userPref)).toDomain());
  }
}

Future<Option> setCurrentUser(User user) async {
  final prefs = await SharedPreferences.getInstance();
  return await prefs.setString('user', jsonEncode(user.toJson())).then((value) => optionOf(value ? value : null));
}

Future<Option> saveToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  return await prefs.setString('token', token).then((value) => optionOf(value ? value : null));
}

Future<String> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  return Future.value(prefs.getString('token') ?? '');
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
  final prefs = await SharedPreferences.getInstance();
  return await prefs.setString('refresh_token', refreshToken).then((value) => optionOf(value ? value : null));
}

Reader<IAuth, Future<Either<AuthFailure, Unit>>> signInEmailPassword(
    {required String emailAddress, required String password}) {
  return Reader(
    (api) => _isValid(emailAddress).flatMapTask((email) => _signIn(EmailAddress(email), password, api)).run(),
  );
}

IOEither<AuthFailure, String> _isValid(String email) => IOEither.fromPredicate(
      email,
      (a) => EmailAddress(a).isValid(),
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
        print(error);
        if (error is AuthFailure) return error;
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
      (error, __) {
        return const ClientFailure.storage();
      },
    );

class Auth implements IAuth {
  final Dio api = Dio();

  @override
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  }) async {
    final response = api.post('$SERVER_API/auth/sign_in', data: {
      'username': emailAddress.getValueOrError(),
      'password': password,
    });
    return response.then((res) {
      print(res.statusCode);
      if (res.statusCode != 200) {
        print(res.statusMessage);
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['error'] != null || data['role'] != 'STUDENT') {
        print(data['error']);
        return Future.error(const AuthFailure.invalidEmailPassword());
      }
      final token = data['access_token'] as String;
      final refreshToken = data['refresh_token'] as String;
      final email = data['email'] as String;
      await saveToken(token);
      await saveRefreshToken(refreshToken);
      await saveEmail(email);
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
    final response = api.get('$SERVER_API/auth/get_user',
        queryParameters: {'email': email},
        options: Options(headers: {
          'Authorization': 'Bearer $token',
        }));
    return response.then((res) {
      print(res.statusCode);
      if (res.statusCode != 200) {
        print(res.statusMessage);
        return Future.error(const AuthFailure.serverError());
      }
      return res.data;
    }).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['error'] != null) {
        print(data['error']);
        return User.empty();
      }
      final user = UserDto.fromJson(data).toDomain();
      return user;
    });
  }

  @override
  Future<Unit> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
    prefs.remove('refresh_token');
    return Future.value(unit);
  }
}

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
