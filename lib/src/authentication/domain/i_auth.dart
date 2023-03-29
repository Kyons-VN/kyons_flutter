import 'package:fpdart/fpdart.dart';

import '../../authentication/domain/user.dart';
import '../../authentication/domain/value_objects.dart';
import '../../knowledge/domain/i_knowledge.dart';

abstract class IAuthApi {
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
