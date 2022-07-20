import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/helper/stream.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';

part 'learning_path_provider.freezed.dart';
part 'learning_path_state.dart';

class LearningPathNotifier extends StateNotifier<LearningPathState> {
  final IKnowledge knowledgeApi;
  LearningPathNotifier(this.knowledgeApi) : super(LearningPathState.initial());

  StreamSubscription? _sub;
  void init() {
    state = LearningPathState.loading();
    final Stream<Either<ApiFailure<dynamic>, LearningPath>> myStream =
        periodicInsertFirst(const Duration(seconds: 5), ((e) => e + 1)).asyncExpand((event) {
      return knowledge_service.getLearningPath().run(knowledgeApi).asStream();
    });
    _sub = myStream.listen((successOrFailure) {
      state = successOrFailure.fold(
        (l) {
          _sub!.cancel();
          return LearningPathState.error(l);
        },
        (data) => LearningPathState.loaded(data),
      );
    });
  }

  @override
  void dispose() async {
    if (_sub != null) await _sub!.cancel();
    super.dispose();
  }
}

final learningPathNotifierProvider = StateNotifierProvider.autoDispose<LearningPathNotifier, LearningPathState>(
  (ref) => LearningPathNotifier(ref.read(knowledge)),
);
