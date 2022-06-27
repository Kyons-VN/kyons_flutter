part of 'diagnostic_test_provider.dart';

@freezed
class DiagnosticTestState with _$DiagnosticTestState {
  const factory DiagnosticTestState({
    required bool loading,
    required Option<TestContent> content,
    required Option<Map<String, dynamic>> answersResult,
    required int progress,
    required bool isSubmitted,
    required bool hasError,
  }) = _DiagnosticTestState;

  factory DiagnosticTestState.loading() => DiagnosticTestState(
        loading: true,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        hasError: false,
      );

  factory DiagnosticTestState.loaded(TestContent content) => DiagnosticTestState(
        loading: false,
        content: some(content),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        hasError: false,
      );
  factory DiagnosticTestState.error() => DiagnosticTestState(
        loading: false,
        content: none(),
        answersResult: none(),
        progress: 0,
        isSubmitted: false,
        hasError: false,
      );
}
