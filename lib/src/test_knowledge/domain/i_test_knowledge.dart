import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

abstract class ITestKnowledge {
  Future<TestContent> getDiagnosticTest(Program program);
  Future<TestContent> getExercise(String lessonGroupId);
  Future<TestContent> getTest(String lessonGroupId);
  Future<TestResult> getTestResult(String lessonGroupId);
  Future<TestResult> submit(TestContent testContent);
}
