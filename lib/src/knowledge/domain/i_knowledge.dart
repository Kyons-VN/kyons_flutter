import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../knowledge/data/knowledge_entities.dart';
import '../../test_knowledge/data/test_knowledge.dart';

enum StudyType {
  @JsonValue("ai")
  ai,
  @JsonValue("self_study")
  selfStudy,
  // @override
  // String toString() => '';
}

abstract class ISubject {
  final String id;
  final String name;
  final String label;
  final List<IProgram> programs;

  ISubject({required this.id, required this.name, required this.label, required this.programs});
}

abstract class IProgram {
  final String id;
  final String name;
  final String subjectId;
  final List<ILearningGoalSelection> learningGoals;

  IProgram({required this.id, required this.name, required this.subjectId, required this.learningGoals});
}

abstract class ILearningGoalSelection {
  final String id;
  final String name;
  final int? maxTopics;
  final int? minTopics;
  final bool canSelectTopic;
  final IMockTestTemplate mockTestTemplates;

  ILearningGoalSelection({
    required this.id,
    required this.name,
    this.maxTopics,
    this.minTopics,
    required this.canSelectTopic,
    required this.mockTestTemplates,
  });
}

abstract class IMockTestTemplate {
  final String id;
  final String name;

  IMockTestTemplate({required this.id, required this.name});
}

abstract class IKnowledgeApi {
  Future<List<Subject>> getSubjects();
  Future<List<Program>> getStudentProgram();
  Future<Unit> defaultLearningPath(Program program);
  Future<TestContent> getDiagnosticTest(Program program);
  Future<LessonGroup> getLessonGroup(String lessonGroupId);
  Future<Unit> setProgram(Program program);
  Future<List<LearningGoal>> getLearningGoals(Program program);
  Future<Unit> selectMockLearningGoal(LearningGoal learningGoal);
  Future<Unit> setLearningGoal(LearningGoal learningGoal);
  Future<Program> getSelectedProgram();
  Future<Unit> removeSelectedProgram();
  Future<Unit> createLesson(Program program, List<String> difficultyIds);
  Future<List<LearningPoint>> getLearningPoints(Program program);
  Future<LearningGoal> getMockLearningGoal();
  Future<LearningGoal> getSelectedLearningGoal();
  Future<List<TopicSelection>> getTopicsFromLearningGoal(LearningGoal learningGoal);
  Future<LearningGoal> createLearningGoal(LearningGoal masterLearningGoal, List<Topic> selectedTopics);
  Future<LearningGoalPath> getLearningGoalPath(Program program, LearningGoal learningGoal);
  Future<Unit> setSelectedCatIndex(int index);
  Future<int> getSelectedCatIndex();
}
