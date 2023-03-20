part of 'learning_path_provider.dart';

@freezed
class LearningPathState with _$LearningPathState {
  const factory LearningPathState({
    required bool loading,
    required Option<LearningGoalPath> learningGoalPathOption,
    required Option<Program> selectedProgram,
    required Option<LearningGoal> selectedLearningGoal,
    required Option<ApiFailure> hasError,
    required int selectedCat,
    required bool isMissing,
  }) = _LearningPathState;
  factory LearningPathState.initial() => LearningPathState(
        loading: false,
        learningGoalPathOption: none(),
        selectedProgram: none(),
        selectedLearningGoal: none(),
        hasError: none(),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.loading() => LearningPathState(
        loading: true,
        learningGoalPathOption: none(),
        selectedProgram: none(),
        selectedLearningGoal: none(),
        hasError: none(),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.loaded(
          Program selectedProgram, LearningGoal selectedLearningGoal, LearningGoalPath learningGoalPath) =>
      LearningPathState(
        loading: false,
        learningGoalPathOption: some(learningGoalPath),
        selectedProgram: some(selectedProgram),
        selectedLearningGoal: some(selectedLearningGoal),
        hasError: none(),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.error(ApiFailure error) => LearningPathState(
        loading: false,
        learningGoalPathOption: none(),
        selectedProgram: none(),
        selectedLearningGoal: none(),
        hasError: some(error),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.missing(ClientFailure error) => LearningPathState(
        loading: false,
        learningGoalPathOption: none(),
        selectedProgram: none(),
        selectedLearningGoal: none(),
        hasError: none(),
        selectedCat: 0,
        isMissing: true,
      );
}
