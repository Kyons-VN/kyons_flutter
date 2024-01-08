import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/data/shared.dart';

import '../../core/data/api.dart';
import '../data/knowledge_service.dart';

final knowledgeApiProvider = Provider<KnowledgeApi>(
  (ref) => KnowledgeApi(apiService: Api.init(ref.read(sharedRef), Dio())),
);
