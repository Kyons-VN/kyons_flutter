import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:shared_package/shared_package.dart';

part 'learning_path_provider.freezed.dart';
part 'learning_path_state.dart';

class LearningPathNotifier extends StateNotifier<LearningPathState> {
  final IKnowledge knowledgeApi;
  LearningPathNotifier(this.knowledgeApi) : super(LearningPathState.initial()) {
    init();
  }

  StreamSubscription? _sub;
  void init() async {
    state = LearningPathState.loading();
    final selectedProgram = await knowledge_service.getSelectedProgram().run(knowledgeApi);
    if (selectedProgram.isLeft()) {
      state = LearningPathState.missing(selectedProgram.getLeft().getOrElse(() => const ClientFailure.storage()));
      return;
    }
    final selectedLearningGoal = await knowledge_service.getSelectedLearningGoal().run(knowledgeApi);
    if (selectedLearningGoal.isLeft()) {
      state = LearningPathState.missing(selectedLearningGoal.getLeft().getOrElse(() => const ClientFailure.storage()));
      return;
    }
    final Stream<Either<ApiFailure<dynamic>, LearningGoalPath>> myStream =
        periodicInsertFirst(const Duration(seconds: 500), ((e) => e + 1)).asyncExpand((event) {
      return knowledge_service
          .getLearningGoalPath(selectedProgram.getRight().getOrElse(() => Program.empty()),
              selectedLearningGoal.getRight().getOrElse(() => LearningGoal.empty()))
          .run(knowledgeApi)
          .asStream();
    });
    _sub = myStream.listen((successOrFailure) {
      state = successOrFailure.fold(
        (l) {
          _sub!.cancel();
          return LearningPathState.error(l);
        },
        (data) => LearningPathState.loaded(selectedProgram.getRight().getOrElse(() => Program.empty()),
            selectedLearningGoal.getRight().getOrElse(() => LearningGoal.empty()), data),
      );
    });
    final selectedCatIndex = await knowledge_service.getSelectedCatIndex().run(knowledgeApi);
    if (selectedCatIndex.isLeft()) {
      state = state.copyWith(selectedCat: selectedCatIndex.getOrElse((l) => 0));
      return;
    }
  }

  Future<Unit> setSelectedCatIndex(int index) async {
    await knowledge_service.setSelectedCatIndex(index).run(knowledgeApi);
    state = state.copyWith(selectedCat: index);
    return unit;
  }

  @override
  void dispose() async {
    if (_sub != null) await _sub!.cancel();
    super.dispose();
  }
}

final learningPathNotifierProvider = StateNotifierProvider.autoDispose<LearningPathNotifier, LearningPathState>(
  (ref) => LearningPathNotifier(ref.read(knowledgeApi)),
);
