import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';

abstract class IAuth {
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  });

  Future<User> getUser();

  Future<Unit> signOut();
}
