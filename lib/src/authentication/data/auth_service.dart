import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Option> saveToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  // const storage = FlutterSecureStorage();
  return await prefs.setString('token', token).then((value) => some(unit), onError: (error) => none());
}

Future<String> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('token') ?? '';
}

Future<Option> saveId(String uuid) async {
  final prefs = await SharedPreferences.getInstance();
  final result = await prefs.setString('uuid', uuid).then((value) => some(unit), onError: (error) => none());
  return result;
}

Future<String> getId() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('uuid') ?? '';
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
  return await prefs.setString('refreshToken', refreshToken).then((value) => some(unit), onError: (error) => none());
}

Future<String> getRefreshToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString('refreshToken') ?? '';
}

Reader<IAuth, Future<Either<AuthFailure, Unit>>> signInEmailPassword(
    {required String emailAddress, required String password}) {
  return Reader(
    (api) => _isValidEmail(emailAddress)
        .flatMap((_) => _isNotEmpty(password))
        .flatMapTask((_) => _signIn(EmailAddress(emailAddress), password, api))
        .run(),
  );
}

IOEither<AuthFailure, String> _isValidEmail(String email) => IOEither.fromPredicate(
      email,
      (a) => EmailAddress(a).isValid(),
      (_) => const AuthFailure.invalidEmail(),
    );

IOEither<AuthFailure, String> _isNotEmpty(String password) => IOEither.fromPredicate(
      password,
      (a) => password.isNotEmpty,
      (_) => const AuthFailure.invalidPassword(),
    );

IOEither<AuthFailure, String> _isValidCode(String code) => IOEither.fromPredicate(
      code,
      (a) => code.length == 6,
      (_) => const AuthFailure.invalidCode(),
    );

IOEither<AuthFailure, String> _isValidPassword(String password) => IOEither.fromPredicate(
      password,
      (a) => Password(a).isValid(),
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

Reader<IAuth, Future<Either<AuthFailure, Unit>>> signUp(
    {required String firstName,
    required String lastName,
    required String emailAddress,
    required String password,
    required bool isAgreed}) {
  return Reader(
    (api) => _isValidEmail(emailAddress)
        .flatMap((_) => _isValidPassword(password))
        .flatMap((_) => _isNotEmpty(firstName))
        .flatMap((_) => _isNotEmpty(lastName))
        .flatMapTask((_) => _signUp(EmailAddress(emailAddress), Password(password), firstName, lastName, isAgreed, api))
        .run(),
  );
}

TaskEither<AuthFailure, Unit> _signUp(
  EmailAddress email,
  Password password,
  String firstName,
  String lastName,
  bool isAggreed,
  IAuth api,
) =>
    TaskEither.tryCatch(
      () => api.signUp(
          email: email, password: password, firstName: firstName, lastName: lastName, isAgreedToTerms: isAggreed),
      (error, __) {
        if (error is AuthFailure) return error;
        if (error is DioError) {
          if (error.response!.statusCode == 404) {
            return const AuthFailure.emailNotFound();
          }
        }
        return const AuthFailure.serverError();
      },
    );

Reader<IAuth, Future<Either<AuthFailure, Unit>>> requestResetPassword(String emailAddress) {
  return Reader(
    (api) =>
        _isValidEmail(emailAddress).flatMapTask((_) => _requestResetPassword(EmailAddress(emailAddress), api)).run(),
  );
}

TaskEither<AuthFailure, Unit> _requestResetPassword(
  EmailAddress email,
  IAuth api,
) =>
    TaskEither.tryCatch(
      () => api.requestResetPassword(email),
      (error, __) {
        if (error is AuthFailure) return error;
        if (error is DioError) {
          if (error.response is Response) {
            if (error.response!.data['error_code'] == 'LimitExceededException') {
              return const AuthFailure.limitExceededException();
            } else if (error.response!.data['error_code'] == 'ResourceNotFound') {
              return const AuthFailure.emailNotFound();
            }
          }
        }
        return const AuthFailure.serverError();
      },
    );

Reader<IAuth, Future<Either<AuthFailure, Unit>>> newPassword(
    {required String emailAddress, required String password, required String code}) {
  return Reader(
    (api) => _isValidEmail(emailAddress)
        .flatMap((_) => _isValidPassword(password))
        .flatMap((_) => _isValidCode(code))
        .flatMapTask((_) => _newPassword(EmailAddress(emailAddress), Password(password), code, api))
        .run(),
  );
}

TaskEither<AuthFailure, Unit> _newPassword(
  EmailAddress email,
  Password password,
  String code,
  IAuth api,
) =>
    TaskEither.tryCatch(
      () => api.newPassword(email: email, password: password, code: code),
      (error, __) {
        if (error is AuthFailure) return error;
        return const AuthFailure.serverError();
      },
    );
