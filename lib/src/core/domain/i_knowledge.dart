import 'package:kyons_flutter/src/core/data/knowledge.dart';

abstract class IKnowledge {
  Future<Iterable<Subject>> getSubjects();
  Future<Iterable<Program>> getFrogramFromSubject(Subject subject);
}
