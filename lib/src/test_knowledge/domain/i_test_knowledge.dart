import 'package:freezed_annotation/freezed_annotation.dart';

import '../../test_knowledge/data/test_knowledge.dart';

abstract class ITestKnowledge {
  Future<TestContent> getDiagnosticTest(String learningGoalId);
  Future<TestContent> getExercise(String lessonGroupId);
  Future<TestContent> getTest(String lessonGroupId);
  Future<TestResult> getTestResult(String lessonGroupId);
  Future<TestResult> submit(TestContent testContent);
}

enum MockTestStatus {
  @JsonValue("pending")
  pending,
  @JsonValue("active")
  active,
  @JsonValue("mock_test_submitted")
  mockTestSubmitted,
  @JsonValue("learning_path_received")
  learningPathReceived,
  @JsonValue("learning_path_activated")
  learningPathActivated,
  @JsonValue("learning_path_deactivated")
  learningPathDeactivated,
}

abstract class IMockTestItem {
  final String id;
  final DateTime createdDate;
  final MockTestStatus status;
  final double? score;
  final int? index;

  IMockTestItem({required this.id, required this.createdDate, required this.status, this.score = 0, this.index = 0});
}
