import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../knowledge/data/knowledge_entities.dart';
import '../../test_knowledge/data/test_entities.dart';

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
  final List<ILearningGoal> learningGoals;

  IProgram({required this.id, required this.name, required this.subjectId, required this.learningGoals});
}

abstract class ILearningGoal {
  final String id;
  final String name;
  final int? maxTopics;
  final int? minTopics;
  final bool canSelectTopic;
  final List<IMockTestTemplate> mockTestTemplates;
  final int testDuration;
  final int totalQuestions;

  const ILearningGoal({
    required this.id,
    required this.name,
    this.maxTopics,
    this.minTopics,
    required this.canSelectTopic,
    required this.mockTestTemplates,
    required this.testDuration,
    required this.totalQuestions,
  });
}

abstract class IMockTestTemplate {
  final String id;
  final String name;

  const IMockTestTemplate({required this.id, required this.name});
}

abstract class IKnowledgeApi {
  // MockTest
  Future<List<Subject>> getSubjects();
  Future<Unit> selectProgram(Program program);
  Future<Program> getSelectedProgram();
  Future<Unit> removeSelectedProgram();
  Future<List<LearningGoal>> getLearningGoals(Program program);
  Future<Unit> selectLearningGoal(LearningGoal learningGoal);
  Future<LearningGoal> getSelectedLearningGoal();
  Future<List<TopicSelection>> getTopicsFromLearningGoal(LearningGoal learningGoal);
  Future<LearningGoal> createLearningGoal(LearningGoal masterLearningGoal, List<Topic> selectedTopics);
  Future<List<MockTestItem>> getMockTestItems(StudentLearningGoal learningGoal);

  // LearningPath
  Future<List<StudentLearningGoal>> getStudentLearningGoals();
  Future<Unit> selectStudentLearningGoal(StudentLearningGoal learningGoal);
  Future<StudentLearningGoal> getSelectedStudentLearningGoal();
  Future<List<MockTestItem>> getLearningGoalMockTests(StudentLearningGoal learningGoal);
  Future<LearningGoalPath> getLearningGoalPath(StudentLearningGoal learningGoal);

  // Lesson
  Future<List<LearningPoint>> getLearningPoints(Program program);
  Future<Unit> createLesson(Program program, List<String> difficultyIds);
  Future<LessonGroup> getLessonGroup(String lessonGroupId);
}

abstract class IStudentLearningGoal {
  /// id: string;
  // name: string;
  // programName: string;
  // subjectId: string;
  // completePercentage: number;
  // order: number;
  final String id;
  final String name;
  final String programName;
  final int completePercentage;

  const IStudentLearningGoal({
    required this.id,
    required this.name,
    required this.programName,
    required this.completePercentage,
  });
}
