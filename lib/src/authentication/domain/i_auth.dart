import 'package:fpdart/fpdart.dart';
// import 'package:kyons_flutter/src/authentication/data/auth.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
// import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';

abstract class IAuth {
  // Reader<IAuthApi, Future<Option<User>>> getSignInUser();
  // Future<Either<AuthFailure, Unit>> registrationEmailPassword({
  //   @required EmailAddress emailAddress,
  //   @required Password password,
  // });
  Reader<IAuthApi, Future<Either<AuthFailure, Unit>>> signInEmailPassword({
    required String emailAddress,
    required String password,
  });
  // Future<void> signOut();
}

abstract class IAuthApi {
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  });
}
