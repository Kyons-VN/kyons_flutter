import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/core/data/Api.dart';

// import 'package:kyons_flutter/src/authentication/domain/user.dart';

import '../domain/i_auth.dart';
// import '../domain/value_objects.dart';

@LazySingleton(as: IAuth)
class AuthService implements IAuth {
  // User? _currentUser;

  /* @override
  Future<Option<User>> getSignInUser() async => optionOf(_currentUser);

  @override
  Future<Either<AuthFailure, Unit>> registrationEmailPassword({EmailAddress? emailAddress, Password? password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddress!.getValueOrError(), password: password!.getValueOrError());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-exists':
          return left(const AuthFailure.emailAlreadyUsed());
        default:
          return left(const AuthFailure.serverError());
      }
    }
  } */

  @override
  Reader<IAuthApi, Future<Either<AuthFailure, Unit>>> signInEmailPassword(
      {required String emailAddress, required String password}) {
    return Reader(
      (api) =>
          _isValid(emailAddress).flatMapTask((email) => _signIn(EmailAddress(email), password, api as AuthApi)).run(),
    );
  }

  /* @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
        _facebookAuth.logOut(),
      ]); */
}

IOEither<AuthFailure, String> _isValid(String email) => IOEither.fromPredicate(
      email,
      (a) => EmailAddress(email).isValid(),
      (_) => const AuthFailure.invalidEmailPassword(),
    );

TaskEither<AuthFailure, Unit> _signIn(
  EmailAddress email,
  String password,
  AuthApi api,
) =>
    TaskEither.tryCatch(
      () => api.signInEmailPassword(emailAddress: email, password: password),
      (_, __) => const AuthFailure.serverError(),
    );

class AuthApi implements IAuthApi {
  late Dio api;
  AuthApi() {
    GetIt getIt = GetIt.instance;
    api = getIt<Api>().api;
  }
  @override
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  }) async {
    final response = api.post('/auth/signin',
        data: FormData.fromMap({
          'email': emailAddress.getValueOrError(),
          'password': password,
        }));
    return response.then((value) {
      return unit;
    });
  }
}
