import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../knowledge/data/knowledge_api.dart';

final knowledgeApiProvider = Provider<KnowledgeApi>(
  (ref) => KnowledgeApi(),
);
