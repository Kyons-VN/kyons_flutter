import 'package:fpdart/fpdart.dart';

import '../../authentication/domain/value_objects.dart';
import '../../knowledge/domain/i_knowledge.dart';
import '../data/auth_entities.dart';

abstract class IAuthService {
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
    // required String firstName,
    // required String lastName,
    required EmailAddress email,
    // required Phone phone,
    // required DateTime birthdate,
    // required String grade,
    // required String school,
    // required String address,
    required Password password,
  });
  Future<Unit> requestResetPassword(EmailAddress email);
  Future<Unit> newPassword({required EmailAddress email, required Password password, required String code});

  Future<Option<Unit>> setToken(String token);
  Future<String> getToken();
  Future<Option<Unit>> setRefreshToken(String token);
  Future<String> getRefreshToken();
  Future<Option<Unit>> saveId(String uuid);
}
