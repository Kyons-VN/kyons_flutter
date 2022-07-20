import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

abstract class ITestKnowledge {
  Future<TestContent> getDiagnosticTest();
  Future<TestContent> getExercise(String lessonGroupId);
  Future<TestContent> getTest(String lessonGroupId);
  Future<TestResult> submit(TestContent testContent);
}
