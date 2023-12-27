part of 'auth_service.dart';

Reader<IAuthService, Future<Either<AuthFailure, Unit>>> signInEmailPassword(
    {required String emailAddress, required String password}) {
  return Reader(
    (api) => _isValidEmail(emailAddress)
        .flatMap((_) => _isNotEmpty(password))
        .flatMapTask((_) => _signInEmailPassword(EmailAddress(emailAddress), password, api))
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

// IOEither<AuthFailure, String> _isValidPhone(String phone) => IOEither.fromPredicate(
//       phone,
//       (a) => Phone(a).isValid(),
//       (_) => const AuthFailure.invalidPhone(),
//     );

TaskEither<AuthFailure, Unit> _signInEmailPassword(
  EmailAddress email,
  String password,
  IAuthService api,
) =>
    TaskEither.tryCatch(
      () => api.signInEmailPassword(emailAddress: email, password: password),
      (error, __) {
        if (error is AuthFailure) return error;
        return const AuthFailure.serverError();
      },
    );

Reader<IAuthService, Future<Either<AuthFailure, User>>> getUser() {
  return Reader(
    (api) => _getUser(api).run(),
  );
}

TaskEither<AuthFailure, User> _getUser(
  IAuthService api,
) =>
    TaskEither.tryCatch(
      () => api.getUser(),
      (error, __) {
        return const AuthFailure.serverError();
      },
    );

Reader<IAuthService, Future<Either<ClientFailure, Unit>>> signOut() {
  return Reader(
    (api) => _signOut(api).run(),
  );
}

TaskEither<ClientFailure, Unit> _signOut(IAuthService api) => TaskEither.tryCatch(
      () => api.signOut(),
      handleClientError,
    );

Reader<IAuthService, Future<Either<ClientFailure, User>>> getCurrentUser() {
  return Reader(
    (api) => _getCurrentUser(api).run(),
  );
}

TaskEither<ClientFailure, User> _getCurrentUser(IAuthService api) => TaskEither.tryCatch(
      () => api.getCurrentUser(),
      handleClientError,
    );

Reader<IAuthService, Future<Either<ClientFailure, Unit>>> setCurrentUser(User user) {
  return Reader(
    (api) => _setCurrentUser(api, user).run(),
  );
}

TaskEither<ClientFailure, Unit> _setCurrentUser(IAuthService api, User user) => TaskEither.tryCatch(
      () => api.setCurrentUser(user),
      handleClientError,
    );

Reader<IAuthService, Future<Either<AuthFailure, Unit>>> signUp({
  // required String firstName,
  // required String lastName,
  required String emailAddress,
  // required String phone,
  // required DateTime birthdate,
  // required String grade,
  // required String school,
  // required String address,
  required String password,
}) {
  return Reader(
    (api) => _isValidEmail(emailAddress)
        .flatMap((_) => _isValidPassword(password))
        // .flatMap((_) => _isNotEmpty(firstName))
        // .flatMap((_) => _isNotEmpty(lastName))
        .flatMapTask((_) => _signUp(
              // firstName: firstName,
              // lastName: lastName,
              email: EmailAddress(emailAddress),
              // phone: Phone(phone),
              // birthdate: birthdate,
              // school: school,
              // grade: grade,
              // address: address,
              password: Password(password),
              api: api,
            ))
        .run(),
  );
}

TaskEither<AuthFailure, Unit> _signUp({
  // required String firstName,
  // required String lastName,
  required EmailAddress email,
  // required Phone phone,
  // required DateTime birthdate,
  // required String grade,
  // required String school,
  // required String address,
  required Password password,
  required IAuthService api,
}) =>
    TaskEither.tryCatch(
      () => api.signUp(
        // firstName: firstName,
        // lastName: lastName,
        email: email,
        // phone: phone,
        // birthdate: birthdate,
        // school: school,
        // grade: grade,
        // address: address,
        password: password,
      ),
      (error, __) {
        if (error is AuthFailure) return error;
        if (error is DioException) {
          if (error.response!.statusCode == 400) {
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

Reader<IAuthService, Future<Either<AuthFailure, Unit>>> requestResetPassword(String emailAddress) {
  return Reader(
    (api) =>
        _isValidEmail(emailAddress).flatMapTask((_) => _requestResetPassword(EmailAddress(emailAddress), api)).run(),
  );
}

TaskEither<AuthFailure, Unit> _requestResetPassword(
  EmailAddress email,
  IAuthService api,
) =>
    TaskEither.tryCatch(
      () => api.requestResetPassword(email),
      (error, __) {
        if (error is AuthFailure) return error;
        if (error is DioException) {
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

Reader<IAuthService, Future<Either<AuthFailure, Unit>>> newPassword(
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
  IAuthService api,
) =>
    TaskEither.tryCatch(
      () => api.newPassword(email: email, password: password, code: code),
      (error, __) {
        if (error is AuthFailure) return error;
        return const AuthFailure.serverError();
      },
    );
