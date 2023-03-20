import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_api.dart';

final testApi = Provider<TestKnowledge>(
  (ref) => TestKnowledge(),
);

enum QuestionViewType { question, result }
