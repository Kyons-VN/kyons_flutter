import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_entities.dart';
import 'package:shared_package/shared_package.dart';

import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/domain/i_knowledge.dart';
import '../data/knowledge_service.dart' as knowledge_service;

part 'learning_path_provider.freezed.dart';
part 'learning_path_state.dart';

class LearningPathNotifier extends StateNotifier<LearningPathState> {
  final IKnowledgeApi knowledgeApi;
  LearningPathNotifier(this.knowledgeApi) : super(LearningPathState.initial()) {
    init();
  }

  StreamSubscription? _sub;
  Future<Unit> init() async {
    state = LearningPathState.loading();
    // final selectedProgram = await knowledge_service.getSelectedProgram().run(knowledgeApi);
    // if (selectedProgram.isLeft()) {
    //   state = LearningPathState.missing(selectedProgram.getLeft().getOrElse(() => const ClientFailure.storage()));
    //   return;
    // }
    final selectedLearningGoalEither = await knowledge_service.getSelectedStudentLearningGoal().run(knowledgeApi);
    if (selectedLearningGoalEither.isLeft()) {
      state = LearningPathState.missing(
          selectedLearningGoalEither.getLeft().getOrElse(() => const ClientFailure.storage()));
      return unit;
    } else {
      final selectedLearningGoal = selectedLearningGoalEither.getOrElse((l) => StudentLearningGoal.empty());
      final mockTestItemsEither = await knowledge_service.getMockTestItems(selectedLearningGoal).run(knowledgeApi);
      if (mockTestItemsEither.isLeft()) {
        state = LearningPathState.error(mockTestItemsEither.getLeft().getOrElse(() => const ApiFailure.clientError()));
        return unit;
      } else {
        final Stream<Either<ApiFailure<dynamic>, LearningGoalPath>> myStream =
            periodicInsertFirst(const Duration(minutes: 1), ((e) => e + 1)).asyncExpand((event) {
          return knowledge_service
              .getLearningGoalPath(selectedLearningGoalEither.getOrElse((l) => StudentLearningGoal.empty()))
              .run(knowledgeApi)
              .asStream();
        });
        _sub = myStream.listen((successOrFailure) {
          state = successOrFailure.fold(
            (l) {
              _sub!.cancel();
              return LearningPathState.error(l);
            },
            (data) => LearningPathState.loaded(selectedLearningGoalEither.getOrElse((_) => StudentLearningGoal.empty()),
                mockTestItemsEither.getOrElse((l) => []), data),
          );
        });
        return unit;
      }
    }

    // final selectedCatIndex = await knowledge_service.getSelectedCatIndex().run(knowledgeApi);
    // if (selectedCatIndex.isLeft()) {
    //   state = state.copyWith(selectedCat: selectedCatIndex.getOrElse((l) => 0));
    //   return;
    // }
  }

  // Future<Unit> setSelectedCatIndex(int index) async {
  //   await knowledge_service.setSelectedCatIndex(index).run(knowledgeApi);
  //   state = state.copyWith(selectedCat: index);
  //   return unit;
  // }

  @override
  void dispose() async {
    if (_sub != null) await _sub!.cancel();
    super.dispose();
  }
}

final learningPathNotifierProvider = StateNotifierProvider.autoDispose<LearningPathNotifier, LearningPathState>(
  (ref) => LearningPathNotifier(ref.read(knowledgeApiProvider)),
);
