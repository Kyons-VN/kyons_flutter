import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart' hide id;
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../authentication/domain/i_auth.dart';
import '../../authentication/domain/value_objects.dart';
import '../../core/data/api.dart';
import 'auth_entities.dart';

Future<Unit> setToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(kAccessToken, token);
  return unit;
}

Future<String> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(kAccessToken) ?? '';
}

Future<Unit> removeToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(kAccessToken);
  return unit;
}

Future<Unit> setRefreshToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(kRefreshToken, token);
  return unit;
}

Future<String> getRefreshToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(kRefreshToken) ?? '';
}

Future<Unit> removeRefreshToken() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(kRefreshToken);
  return unit;
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

Reader<IAuthApi, Future<Either<AuthFailure, Unit>>> signInEmailPassword(
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

IOEither<AuthFailure, String> _isValidPhone(String email) => IOEither.fromPredicate(
      email,
      (a) => Phone(a).isValid(),
      (_) => const AuthFailure.invalidPhone(),
    );

TaskEither<AuthFailure, Unit> _signIn(
  EmailAddress email,
  String password,
  IAuthApi api,
) =>
    TaskEither.tryCatch(
      () => api.signInEmailPassword(emailAddress: email, password: password),
      (error, __) {
        if (error is AuthFailure) return error;
        return const AuthFailure.serverError();
      },
    );

Reader<IAuthApi, Future<Either<AuthFailure, User>>> getUser() {
  return Reader(
    (api) => _getUser(api).run(),
  );
}

TaskEither<AuthFailure, User> _getUser(
  IAuthApi api,
) =>
    TaskEither.tryCatch(
      () => api.getUser(),
      (error, __) {
        return const AuthFailure.serverError();
      },
    );

Reader<IAuthApi, Future<Either<ClientFailure, Unit>>> signOut() {
  return Reader(
    (api) => _signOut(api).run(),
  );
}

TaskEither<ClientFailure, Unit> _signOut(IAuthApi api) => TaskEither.tryCatch(
      () => api.signOut(),
      handleClientError,
    );

Reader<IAuthApi, Future<Either<ClientFailure, User>>> getCurrentUser() {
  return Reader(
    (api) => _getCurrentUser(api).run(),
  );
}

TaskEither<ClientFailure, User> _getCurrentUser(IAuthApi api) => TaskEither.tryCatch(
      () => api.getCurrentUser(),
      handleClientError,
    );

Reader<IAuthApi, Future<Either<ClientFailure, Unit>>> setCurrentUser(User user) {
  return Reader(
    (api) => _setCurrentUser(api, user).run(),
  );
}

TaskEither<ClientFailure, Unit> _setCurrentUser(IAuthApi api, User user) => TaskEither.tryCatch(
      () => api.setCurrentUser(user),
      handleClientError,
    );

Reader<IAuthApi, Future<Either<AuthFailure, Unit>>> signUp({
  required String firstName,
  required String lastName,
  required String emailAddress,
  required String phone,
  required DateTime birthdate,
  required String grade,
  required String school,
  required String address,
}) {
  return Reader(
    (api) => _isValidEmail(emailAddress)
        .flatMap((_) => _isValidPhone(phone))
        .flatMap((_) => _isNotEmpty(firstName))
        .flatMap((_) => _isNotEmpty(lastName))
        .flatMapTask((_) => _signUp(
              firstName: firstName,
              lastName: lastName,
              email: EmailAddress(emailAddress),
              phone: Phone(phone),
              birthdate: birthdate,
              school: school,
              grade: grade,
              address: address,
              api: api,
            ))
        .run(),
  );
}

TaskEither<AuthFailure, Unit> _signUp({
  required String firstName,
  required String lastName,
  required EmailAddress email,
  required Phone phone,
  required DateTime birthdate,
  required String grade,
  required String school,
  required String address,
  required IAuthApi api,
}) =>
    TaskEither.tryCatch(
      () => api.signUp(
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        birthdate: birthdate,
        school: school,
        grade: grade,
        address: address,
      ),
      (error, __) {
        if (error is AuthFailure) return error;
        if (error is DioError) {
          if (error.response!.statusCode == 400) {
            print(error.response!.statusCode);
            print(error.response!.data);
            if (error.response!.data['error_code'] == 'UsernameExistsException') {
              return const AuthFailure.emailAlreadyUsed();
            } else if (error.response!.data['error_code'] == 'InvalidParam' ||
                error.response!.data['error_code'] == 'InvalidParameterException') {
              return AuthFailure.invalidParam(error.response!.data['invalid_param'] ?? '');
            } else {
              return const AuthFailure.serverError();
            }
          }
        }
        return const AuthFailure.serverError();
      },
    );

Reader<IAuthApi, Future<Either<AuthFailure, Unit>>> requestResetPassword(String emailAddress) {
  return Reader(
    (api) =>
        _isValidEmail(emailAddress).flatMapTask((_) => _requestResetPassword(EmailAddress(emailAddress), api)).run(),
  );
}

TaskEither<AuthFailure, Unit> _requestResetPassword(
  EmailAddress email,
  IAuthApi api,
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

Reader<IAuthApi, Future<Either<AuthFailure, Unit>>> newPassword(
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
  IAuthApi api,
) =>
    TaskEither.tryCatch(
      () => api.newPassword(email: email, password: password, code: code),
      (error, __) {
        if (error is AuthFailure) return error;
        return const AuthFailure.serverError();
      },
    );
