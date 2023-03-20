import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../../knowledge/app/knowledge_provider.dart';
import '../../../knowledge/data/knowledge_entities.dart';
import '../../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../../knowledge/domain/i_knowledge.dart';

part 'select_learning_goal_controller.freezed.dart';
part 'select_learning_goal_controller.g.dart';
part 'select_learning_goal_state.dart';

@riverpod
class SelectLearningGoalController extends _$SelectLearningGoalController {
  late IKnowledge api;
  @override
  SelectLearningGoalState build() {
    api = ref.read(knowledgeApi);
    Future.delayed(const Duration(milliseconds: 200), () => init());
    return SelectLearningGoalState.initial();
  }

  Future<Unit> init() async {
    state = state.copyWith(isLoading: true);
    final Either<ApiFailure, List<Subject>> failureOrSuccess = await knowledge_service.getSubjects().run(api);
    state = state.copyWith(
      hasError: failureOrSuccess.isLeft(),
      subjectsOption: failureOrSuccess.getRight(),
      programsOption: optionOf(failureOrSuccess.getOrElse((l) => []).first.programs),
      isLoading: false,
    );
    // if (failureOrSuccess.isRight()) {
    //   setSubjectOption(failureOrSuccess.getOrElse((l) => []).first);
    // }
    return unit;
  }

  Unit setSubjectOption(Subject subject) {
    state = state.copyWith(
      selectedSubjectOption: some(subject),
      programsOption: optionOf(subject.programs),
      selectedLearningGoalOption: none(),
    );
    if (subject.programs.isEmpty) {
      state = state.copyWith(
        selectedProgramOption: none(),
      );
      return unit;
    }
    // setProgramOption(subject.programs.first);
    return unit;
  }

  Future<Unit> setProgramOption(Program program) async {
    state = state.copyWith(
      selectedProgramOption: some(program),
      selectedLearningGoalOption: none(),
      isLoading: true,
    );
    final failureOrSuccess = await knowledge_service.getLearningGoals(program).run(api);
    state = state.copyWith(
      hasError: failureOrSuccess.isLeft(),
      learningGoalsOption: failureOrSuccess.getRight(),
      isLoading: false,
    );
    return unit;
  }

  Unit setLearningGoalOption(LearningGoal learningGoal) {
    state = state.copyWith(
      selectedLearningGoalOption: some(learningGoal),
    );
    return unit;
  }

  Future<Unit> submitBtnPressed() async {
    state = state.copyWith(isLoading: true);
    await state.selectedProgramOption.fold(() {}, (program) async {
      await state.selectedLearningGoalOption.fold(() {}, (learningGoal) async {
        final failureOrSuccess1 = await knowledge_service.selectProgram(program).run(api);
        final failureOrSuccess2 = await knowledge_service.selectLearningGoal(learningGoal).run(api);
        failureOrSuccess1.flatMap((a) => failureOrSuccess2).fold((l) {
          state = state.copyWith(
            hasError: true,
            isLoading: false,
          );
        }, (r) {
          state = state.copyWith(
            hasError: false,
            isLoading: false,
            isCompleted: true,
          );
        });
      });
    });
    // failureOrSuccess = await
    return unit;
  }
}