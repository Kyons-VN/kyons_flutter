part of 'learning_path_provider.dart';

@freezed
class LearningPathState with _$LearningPathState {
  const factory LearningPathState({
    required bool loading,
    required Option<LearningGoalPath> learningGoalPathOption,
    required Option<StudentLearningGoal> selectedLearningGoal,
    required Option<ApiFailure> hasError,
    required Option<List<MockTestItem>> mockTestItemsOption,
    required int selectedCat,
    required bool isMissing,
  }) = _LearningPathState;
  factory LearningPathState.initial() => LearningPathState(
        loading: false,
        learningGoalPathOption: none(),
        selectedLearningGoal: none(),
        hasError: none(),
        mockTestItemsOption: none(),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.loading() => LearningPathState(
        loading: true,
        learningGoalPathOption: none(),
        selectedLearningGoal: none(),
        hasError: none(),
        mockTestItemsOption: none(),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.loaded(StudentLearningGoal selectedLearningGoal, List<MockTestItem> mockTestItems,
          LearningGoalPath learningGoalPath) =>
      LearningPathState(
        loading: false,
        learningGoalPathOption: some(learningGoalPath),
        selectedLearningGoal: some(selectedLearningGoal),
        hasError: none(),
        mockTestItemsOption: some(mockTestItems),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.error(ApiFailure error) => LearningPathState(
        loading: false,
        learningGoalPathOption: none(),
        selectedLearningGoal: none(),
        hasError: some(error),
        mockTestItemsOption: none(),
        selectedCat: 0,
        isMissing: false,
      );
  factory LearningPathState.missing(ClientFailure error) => LearningPathState(
        loading: false,
        learningGoalPathOption: none(),
        selectedLearningGoal: none(),
        mockTestItemsOption: none(),
        hasError: none(),
        selectedCat: 0,
        isMissing: true,
      );
}
