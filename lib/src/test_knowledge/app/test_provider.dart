import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/data/api.dart';

import '../../../boostrap/config_reader.dart';
import '../../test_knowledge/data/test_knowledge_api.dart';

final testApi = Provider<TestKnowledge>(
  (ref) => TestKnowledge(apiService: Api.init(ref as WidgetRef), hostName: ConfigReader.serverApi()),
);

enum QuestionViewType { question, result }
