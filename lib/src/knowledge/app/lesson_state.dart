part of 'lesson_provider.dart';

@freezed
class LessonState with _$LessonState {
  const factory LessonState({
    required Option<LessonGroup> lessonGroup,
    required bool loading,
    required bool hasError,
  }) = _LessonState;

  factory LessonState.initial() => LessonState(
        lessonGroup: none(),
        loading: false,
        hasError: false,
      );
  factory LessonState.loading() => LessonState(
        lessonGroup: none(),
        loading: true,
        hasError: false,
      );
  factory LessonState.data(LessonGroup lessonGroup) => LessonState(
        lessonGroup: some(lessonGroup),
        loading: false,
        hasError: false,
      );
  factory LessonState.error([String? error]) => LessonState(lessonGroup: none(), loading: false, hasError: true);
}

@freezed
class LessonStudyState with _$LessonStudyState {
  const factory LessonStudyState({
    required int selectedLessonIndex,
    required TabMenu selectedTabIndex,
    required String selectedLessonId,
  }) = _LessonStudyState;

  factory LessonStudyState.initial() =>
      const LessonStudyState(selectedLessonId: '', selectedLessonIndex: -1, selectedTabIndex: TabMenu.study);
}
