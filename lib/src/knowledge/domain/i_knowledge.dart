import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

enum StudyType {
  @JsonValue("ai")
  ai,
  @JsonValue("self_study")
  selfStudy,
  // @override
  // String toString() => '';
}

abstract class IKnowledge {
  Future<List<Subject>> getSubjects();
  Future<List<Program>> getStudentProgram();
  Future<Unit> defaultLearningPath(Program program);
  Future<TestContent> getDiagnosticTest(Program program);
  Future<LearningPath> getLearningPath(Program program);
  Future<LessonGroup> getLessonGroup(String lessonGroupId);
  Future<Unit> selectProgram(Program program);
  Future<Program> getSelectedProgram();
  Future<Unit> removeSelectedProgram();
  Future<Unit> createLesson(Program program, List<String> difficultyIds);
  Future<List<LearningPoint>> getLearningPoints(Program program);
}
