part of 'lesson_provider.dart';

@freezed
class LessonState with _$LessonState {
  const factory LessonState({
    required Option<LessonGroup> lessonGroup,
    required bool isLoading,
    required Option<Program> selectedProgram,
    required Option<ApiFailure> apiError,
    required Option<ClientFailure> clientError,
  }) = _LessonState;

  factory LessonState.initial() => LessonState(
        lessonGroup: none(),
        isLoading: false,
        selectedProgram: none(),
        apiError: none(),
        clientError: none(),
      );
  factory LessonState.loading() => LessonState(
        lessonGroup: none(),
        isLoading: true,
        selectedProgram: none(),
        apiError: none(),
        clientError: none(),
      );
  factory LessonState.data(LessonGroup lessonGroup, Program selectedProgram) => LessonState(
        lessonGroup: some(lessonGroup),
        isLoading: false,
        selectedProgram: some(selectedProgram),
        apiError: none(),
        clientError: none(),
      );
  factory LessonState.apiError(ApiFailure error) => LessonState(
        lessonGroup: none(),
        isLoading: false,
        selectedProgram: none(),
        apiError: some(error),
        clientError: none(),
      );
  factory LessonState.clientError(ClientFailure error) => LessonState(
        lessonGroup: none(),
        isLoading: false,
        selectedProgram: none(),
        apiError: none(),
        clientError: some(error),
      );
}

@freezed
class LessonStudyState with _$LessonStudyState {
  const factory LessonStudyState({
    required TabMenu selectedTabIndex,
  }) = _LessonStudyState;

  factory LessonStudyState.initial() => const LessonStudyState(selectedTabIndex: TabMenu.test);
}
