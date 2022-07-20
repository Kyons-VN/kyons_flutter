import 'package:kyons_flutter/src/tutor/domain/session.dart';

abstract class ITutor {
  Future<String> requestTutor(String learningPointDifficultyId);
  Future<TutorSessionStatus> checkSessionStatus(String sessiontId);
}
