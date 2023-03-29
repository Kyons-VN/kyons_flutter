import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../test_knowledge/data/test_knowledge_api.dart';

final testApi = Provider<TestKnowledge>(
  (ref) => TestKnowledge(),
);

enum QuestionViewType { question, result }
