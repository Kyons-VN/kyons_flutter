import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';

import '../../core/data/api.dart';
import '../../knowledge/data/knowledge_api.dart';

final knowledgeApiProvider = Provider<KnowledgeApi>(
  (ref) => KnowledgeApi(hostName: ConfigReader.serverApi(), apiService: Api.init(ref as WidgetRef)),
);
