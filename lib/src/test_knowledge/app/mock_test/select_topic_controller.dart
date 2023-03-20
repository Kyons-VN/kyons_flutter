import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../../knowledge/app/knowledge_provider.dart';
import '../../../knowledge/data/knowledge_entities.dart';
import '../../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../../knowledge/domain/i_knowledge.dart';

part 'select_topic_controller.freezed.dart';
part 'select_topic_controller.g.dart';
part 'select_topic_state.dart';

@riverpod
class SelectTopicController extends _$SelectTopicController {
  late IKnowledge api;
  LearningGoal selectedLearningGoal = LearningGoal.empty();
  @override
  SelectTopicState build() {
    api = ref.read(knowledgeApi);
    Future.delayed(const Duration(milliseconds: 200), () => init());
    return SelectTopicState.initial();
  }

  Future<Unit> init() async {
    state = state.copyWith(isLoading: true);
    final selectedLearningGoalEither = await knowledge_service.getSelectedLearningGoal().run(api);
    await selectedLearningGoalEither.fold((error) async {
      state = state.copyWith(
        clientError: some(error),
        isLoading: false,
      );
    }, (learningGoal) async {
      selectedLearningGoal = learningGoal;
      final failureOrSuccess = await knowledge_service.getTopicsFromLearningGoal(learningGoal).run(api);
      state = state.copyWith(
        apiError: failureOrSuccess.getLeft(),
        topicsOption: failureOrSuccess.getRight(),
        isLoading: false,
      );
    });
    return unit;
  }

  void selectTopicChanged(int index, bool value) {
    final topicsOption = state.topicsOption.getOrElse(() => []);
    topicsOption[index].isSelected = value;
    final selectedTopics = state.selectedTopics.contains(topicsOption[index])
        ? state.selectedTopics.where((element) => element != topicsOption[index]).toList()
        : [...state.selectedTopics, topicsOption[index]];
    final isValid = (selectedTopics.length >= selectedLearningGoal.minTopics &&
        selectedTopics.length <= selectedLearningGoal.maxTopics);

    state = state.copyWith(
      topicsOption: some(topicsOption),
      selectedTopics: selectedTopics,
      isValid: !state.isTouched ? true : isValid,
    );
  }

  Future<Unit> submitBtnPressed() async {
    final selected = state.topicsOption.getOrElse(() => []).filter((t) => t.isSelected).length;
    state = state.copyWith(
      isTouched: true,
      isValid: (selected >= selectedLearningGoal.minTopics && selected <= selectedLearningGoal.maxTopics),
      newLearningGoal: none(),
    );
    if (!state.isValid) {
      return unit;
    }
    state = state.copyWith(
      isLoading: true,
    );
    final failureOrSuccess =
        await knowledge_service.createLearningGoal(selectedLearningGoal, state.selectedTopics).run(api);
    failureOrSuccess.fold((l) {
      state = state.copyWith(
        apiError: failureOrSuccess.getLeft(),
        isLoading: false,
      );
    }, (learningGoal) {
      state = state.copyWith(
        apiError: none(),
        isLoading: false,
        newLearningGoal: some(learningGoal),
      );
    });
    return unit;
  }
}
