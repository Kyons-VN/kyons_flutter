part of 'diagnostic_test_provider.dart';

@freezed
class DiagnosticTestState with _$DiagnosticTestState {
  const factory DiagnosticTestState({
    required bool loading,
    required Option<TestContent> content,
    required Option<Map<String, String>> answersResult,
    required int progress,
    required Option<int> currentQuestionIndex,
    required bool isSubmitted,
    required bool hasError,
    required Option<TestResult> testResult,
    required Option<LessonGroup> lessonGroup,
  }) = _DiagnosticTestState;

  factory DiagnosticTestState.initial() => DiagnosticTestState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        currentQuestionIndex: none(),
        hasError: false,
        testResult: none(),
        lessonGroup: none(),
      );

  factory DiagnosticTestState.loading() => DiagnosticTestState(
        loading: true,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        currentQuestionIndex: none(),
        hasError: false,
        testResult: none(),
        lessonGroup: none(),
      );

  factory DiagnosticTestState.loaded(TestContent content, LessonGroup lessonGroup) {
    return DiagnosticTestState(
      loading: false,
      content: some(content),
      answersResult: none(),
      progress: 0,
      currentQuestionIndex: some(0),
      isSubmitted: false,
      hasError: false,
      testResult: none(),
      lessonGroup: some(lessonGroup),
    );
  }
  factory DiagnosticTestState.error() => DiagnosticTestState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        currentQuestionIndex: none(),
        isSubmitted: false,
        hasError: true,
        testResult: none(),
        lessonGroup: none(),
      );
}
