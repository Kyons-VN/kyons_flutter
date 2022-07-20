part of 'lesson_test_provider.dart';

@freezed
class LessonTestState with _$LessonTestState {
  const factory LessonTestState({
    required bool loading,
    required Option<TestContent> content,
    required Option<Map<String, String>> answersResult,
    required int progress,
    required Option<int> currentQuestionIndex,
    required bool isSubmitted,
    required bool hasError,
    required Option<TestResult> testResult,
  }) = _LessonTestState;

  factory LessonTestState.initialize() => LessonTestState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        currentQuestionIndex: none(),
        hasError: false,
        testResult: none(),
      );

  factory LessonTestState.loading() => LessonTestState(
        loading: true,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        currentQuestionIndex: none(),
        hasError: false,
        testResult: none(),
      );

  factory LessonTestState.loaded(TestContent content) => LessonTestState(
        loading: false,
        content: some(content),
        answersResult: none(),
        progress: 0,
        currentQuestionIndex: some(0),
        isSubmitted: false,
        hasError: false,
        testResult: none(),
      );
  factory LessonTestState.error() => LessonTestState(
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
