import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_service.dart' as test_service;
import 'package:kyons_flutter/src/test_knowledge/domain/i_test_knowledge.dart';

part 'diagnostic_test_provider.freezed.dart';
part 'diagnostic_test_state.dart';

class DiagnosticTestNotifier extends StateNotifier<DiagnosticTestState> {
  final ITestKnowledge testApi;
  DiagnosticTestNotifier(this.testApi) : super(DiagnosticTestState.loading());

  Future<void> init() async {
    state = DiagnosticTestState.loading();
    final successOrFailure = await test_service.getDiagnosticTest().run(testApi);
    state = successOrFailure.fold(
      (l) => DiagnosticTestState.error(),
      (content) {
        content.startedAt = DateTime.now();
        return DiagnosticTestState.loaded(content);
      },
    );
  }

  void update(Map<String, dynamic> answersResult) {
    final progress =
        (answersResult.entries.length * 100 ~/ state.content.getOrElse(() => TestContent.empty()).questions.length);
    state = state.copyWith(
      progress: progress,
      answersResult: some(answersResult),
    );
  }

  Future<void> submit() async {
    state = state.copyWith(isSubmitted: true);
    final content = state.content.getOrElse(() => TestContent.empty())..endedAt = DateTime.now();
    final failureOrSuccess = await test_service.submit(content).run(testApi);
    state = state.copyWith(isSubmitted: false, hasError: failureOrSuccess.isLeft());
  }
}
