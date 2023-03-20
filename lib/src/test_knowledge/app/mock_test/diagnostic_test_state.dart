part of 'diagnostic_test_controller.dart';

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
    required Option<bool> missingLearningGoal,
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
        missingLearningGoal: none(),
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
        missingLearningGoal: none(),
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
      missingLearningGoal: none(),
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
        missingLearningGoal: none(),
      );
  factory DiagnosticTestState.missingLearningGoal() => DiagnosticTestState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        currentQuestionIndex: none(),
        isSubmitted: false,
        hasError: true,
        testResult: none(),
        lessonGroup: none(),
        missingLearningGoal: some(true),
      );
}
