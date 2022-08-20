import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_api.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_service.dart' as test_service;
import 'package:kyons_flutter/src/test_knowledge/domain/i_test_knowledge.dart';

part 'diagnostic_test_provider.freezed.dart';
part 'diagnostic_test_state.dart';

class DiagnosticTestNotifier extends StateNotifier<DiagnosticTestState> {
  final ITestKnowledge testApi;
  DiagnosticTestNotifier(this.testApi) : super(DiagnosticTestState.initial());

  Future<void> init() async {
    state = DiagnosticTestState.loading();
    final successOrFailure = await test_service.getDiagnosticTest().run(testApi);
    state = successOrFailure.fold(
      (l) => DiagnosticTestState.error(),
      (content) {
        content.startedAt = DateTime.now();
        final lessonInfos = content.questions
            .map((question) => LessonInfo(
                  category: question.category,
                  topic: question.topic,
                  lessons: [],
                ))
            .toList()
            .asMap()
            .map((key, lessonInfo) => MapEntry(lessonInfo.topic.id, lessonInfo))
            .values
            .toList();
        final lessonGroup = LessonGroup(id: '', lessonInfos: lessonInfos);
        return DiagnosticTestState.loaded(content, lessonGroup);
      },
    );
  }

  void update(Map<String, String> answersResult) {
    final progress =
        (answersResult.entries.length * 100 ~/ state.content.getOrElse(() => TestContent.empty()).questions.length);
    state = state.copyWith(
      progress: progress,
      answersResult: some(answersResult),
    );
  }

  void previous() {
    if (state.currentQuestionIndex.isNone()) return;
    final currentQuestionIndex = state.currentQuestionIndex.getOrElse(() => 0);
    if (currentQuestionIndex > 0) {
      state = state.copyWith(currentQuestionIndex: some(currentQuestionIndex - 1));
    }
  }

  void next() {
    if (state.currentQuestionIndex.isNone()) return;
    final currentQuestionIndex = state.currentQuestionIndex.getOrElse(() => 0);
    if (currentQuestionIndex < state.content.getOrElse(() => TestContent.empty()).questions.length - 1) {
      state = state.copyWith(currentQuestionIndex: some(currentQuestionIndex + 1));
    }
  }

  void selectedAnswer(String answerValue) {
    if (state.currentQuestionIndex.isNone()) return;
    final currentQuestionIndex = state.currentQuestionIndex.getOrElse(() => -1);
    final currentQuestionId = state.content.getOrElse(() => TestContent.empty()).questions[currentQuestionIndex].id;
    final answersResult = state.answersResult.getOrElse(() => {});
    answersResult[currentQuestionId] = answerValue;
    state = state.copyWith(answersResult: some(answersResult));
  }

  Future<void> submit(Map<String, String> answersResult) async {
    state = state.copyWith(isSubmitted: true);
    final content = state.content.getOrElse(() => TestContent.empty())..endedAt = DateTime.now();
    content.setSubmission(answersResult);
    final failureOrSuccess = await test_service.submit(content).run(testApi);
    state = state.copyWith(
      hasError: failureOrSuccess.isLeft(),
      isSubmitted: false,
      testResult: failureOrSuccess.fold(
        (l) => none(),
        (data) => some(data),
      ),
    );
  }

  void test() {
    // final currentQuestionId = ;
    // final answersResult = state.answersResult.getOrElse(() => {});
    final Map<String, String> answersResult = Map.fromEntries(state.content
        .getOrElse(() => TestContent.empty())
        .questions
        .map((question) => MapEntry(question.id, question.answers[0].id)));
    state = state.copyWith(answersResult: some(answersResult));
  }
}

final testApi = Provider<TestKnowledge>((ref) => TestKnowledge());

final diagnosticTestNotifierProvider = StateNotifierProvider.autoDispose<DiagnosticTestNotifier, DiagnosticTestState>(
  (ref) => DiagnosticTestNotifier(ref.read(testApi)),
);
