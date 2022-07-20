part of 'lesson_exercise_provider.dart';

@freezed
class LessonExerciseState with _$LessonExerciseState {
  const factory LessonExerciseState({
    required bool loading,
    required Option<TestContent> content,
    required Option<Map<String, String>> answersResult,
    required int progress,
    required Option<int> currentQuestionIndex,
    required bool isSubmitted,
    required bool hasError,
    required Option<TestResult> testResult,
  }) = _LessonExerciseState;

  factory LessonExerciseState.initialize() => LessonExerciseState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        currentQuestionIndex: none(),
        hasError: false,
        testResult: none(),
      );

  factory LessonExerciseState.loading() => LessonExerciseState(
        loading: true,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        currentQuestionIndex: none(),
        hasError: false,
        testResult: none(),
      );

  factory LessonExerciseState.loaded(TestContent content) => LessonExerciseState(
        loading: false,
        content: some(content),
        answersResult: none(),
        progress: 0,
        currentQuestionIndex: some(0),
        isSubmitted: false,
        hasError: false,
        testResult: none(),
      );
  factory LessonExerciseState.error() => LessonExerciseState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        currentQuestionIndex: none(),
        isSubmitted: false,
        hasError: false,
        testResult: none(),
      );
}
