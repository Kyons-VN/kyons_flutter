import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_api.dart';

final knowledgeApi = Provider<Knowledge>(
  (ref) => Knowledge(),
);
