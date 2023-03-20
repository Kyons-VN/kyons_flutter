part of 'select_learning_goal_controller.dart';

@freezed
class SelectLearningGoalState with _$SelectLearningGoalState {
  const factory SelectLearningGoalState({
    required bool isLoading,
    required bool isCompleted,
    required bool hasError,
    required Option<List<Subject>> subjectsOption,
    required Option<List<Program>> programsOption,
    required Option<List<LearningGoal>> learningGoalsOption,
    required Option<Subject> selectedSubjectOption,
    required Option<Program> selectedProgramOption,
    required Option<LearningGoal> selectedLearningGoalOption,
  }) = _SelectLearningGoalState;
  factory SelectLearningGoalState.initial() => SelectLearningGoalState(
        isLoading: false,
        isCompleted: false,
        hasError: false,
        subjectsOption: none(),
        programsOption: none(),
        learningGoalsOption: none(),
        selectedSubjectOption: none(),
        selectedProgramOption: none(),
        selectedLearningGoalOption: none(),
      );
}
