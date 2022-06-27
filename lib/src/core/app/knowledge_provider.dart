import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart';

final knowledge = Provider<Knowledge>(
  (ref) => Knowledge(),
);
