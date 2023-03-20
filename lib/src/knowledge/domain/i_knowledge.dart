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
  Future<LessonGroup> getLessonGroup(String lessonGroupId);
  Future<Unit> selectProgram(Program program);
  Future<List<LearningGoal>> getLearningGoals(Program program);
  Future<Unit> selectLearningGoal(LearningGoal learningGoal);
  Future<Program> getSelectedProgram();
  Future<Unit> removeSelectedProgram();
  Future<Unit> createLesson(Program program, List<String> difficultyIds);
  Future<List<LearningPoint>> getLearningPoints(Program program);
  Future<LearningGoal> getSelectedLearningGoal();
  Future<List<TopicSelection>> getTopicsFromLearningGoal(LearningGoal learningGoal);
  Future<LearningGoal> createLearningGoal(LearningGoal masterLearningGoal, List<Topic> selectedTopics);
  Future<LearningGoalPath> getLearningGoalPath(Program program, LearningGoal learningGoal);
  Future<Unit> setSelectedCatIndex(int index);
  Future<int> getSelectedCatIndex();
}
