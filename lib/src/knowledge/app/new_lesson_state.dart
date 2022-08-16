part of 'new_lesson_provider.dart';

@freezed
class NewLessonState with _$NewLessonState {
  const factory NewLessonState({
    required bool loading,
    required Option<List<LearningPoint>> learningPoints,
    required bool hasError,
    required List<String> selectedIds,
  }) = _NewLessonState;
  factory NewLessonState.initial() => NewLessonState(
        loading: false,
        learningPoints: none(),
        hasError: false,
        selectedIds: [],
      );
  factory NewLessonState.loading() => NewLessonState(
        loading: true,
        learningPoints: none(),
        hasError: false,
        selectedIds: [],
      );
  factory NewLessonState.data(List<LearningPoint> learningPoints) => NewLessonState(
        loading: false,
        learningPoints: some(learningPoints),
        hasError: false,
        selectedIds: [],
      );
  factory NewLessonState.error(ApiFailure error) => NewLessonState(
        loading: false,
        learningPoints: none(),
        hasError: true,
        selectedIds: [],
      );
}
