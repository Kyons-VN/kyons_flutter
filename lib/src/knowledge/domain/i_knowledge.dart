import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

abstract class IKnowledge {
  Future<List<Subject>> getSubjects();
  Future<List<Program>> getStudentProgram();
  Future<Unit> defaultLearningPath();
  Future<TestContent> getDiagnosticTest();
  Future<LearningPath> getLearningPath();
  Future<LessonGroup> getLessonGroup(String lessonGroupId);
  Future<Unit> setCurrentProgram(Program program);
  Future<Program> getCurrentProgram();
}
