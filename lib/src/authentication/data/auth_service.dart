import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
