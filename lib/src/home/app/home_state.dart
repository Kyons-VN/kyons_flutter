part of 'home_provider.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<List<StudentLearningGoal>> studentLearningGoalsOption,
    required bool hasError,
  }) = _HomeState;
}
