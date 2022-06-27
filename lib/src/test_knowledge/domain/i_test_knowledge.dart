import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

abstract class ITestKnowledge {
  Future<TestContent> getDiagnosticTest();
  Future<Unit> submit(TestContent testContent);
}
