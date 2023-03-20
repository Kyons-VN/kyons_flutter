import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';

abstract class IAuth {
  Future<Unit> signInEmailPassword({
    required EmailAddress emailAddress,
    required String password,
  });
  Future<User> getUser();
  Future<Unit> setCurrentUser(User user);
  Future<User> getCurrentUser();
  Future<StudyType> getStudyType();
  Future<Unit> signOut();
  Future<Unit> signUp({
    required String firstName,
    required String lastName,
    required EmailAddress email,
    required Password password,
    required bool isAgreedToTerms,
  });
  Future<Unit> requestResetPassword(EmailAddress email);
  Future<Unit> newPassword({required EmailAddress email, required Password password, required String code});
}
