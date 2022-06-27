import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';

abstract class IKnowledge {
  Future<List<Subject>> getSubjects();
  Future<List<Program>> getStudentProgram();
  Future<Unit> defaultLearningPath();
}
