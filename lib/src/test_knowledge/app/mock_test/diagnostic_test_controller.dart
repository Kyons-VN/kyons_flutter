import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../knowledge/app/knowledge_provider.dart';
import '../../../knowledge/data/knowledge_entities.dart';
import '../../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../../knowledge/domain/i_knowledge.dart';
import '../../../test_knowledge/data/test_knowledge.dart';
import '../../../test_knowledge/data/test_knowledge_service.dart' as test_service;
import '../../../test_knowledge/domain/i_test_knowledge.dart';
import '../test_provider.dart';

part 'diagnostic_test_controller.freezed.dart';
part 'diagnostic_test_state.dart';

class DiagnosticTestController extends StateNotifier<DiagnosticTestState> {
  final ITestKnowledge testApi;
  final IKnowledgeApi knowledgeApi;
  final String learningGoalId;
  Option<LearningGoal> learningGoal = none();

  DiagnosticTestController(this.learningGoalId, this.testApi, this.knowledgeApi)
      : super(DiagnosticTestState.initial()) {
    Future.delayed(const Duration(milliseconds: 200), () => init(learningGoalId));
  }

  // @override
  // DiagnosticTestState build() {
  //   Future.delayed(const Duration(milliseconds: 200), () => init(learningGoalId));
  //   return DiagnosticTestState.initial();
  // }

  Future<void> init(String learningGoalId) async {
    state = DiagnosticTestState.loading();
    final mockLearningGoal = await knowledge_service.getSelectedLearningGoal().run(knowledgeApi);
    if (mockLearningGoal.isLeft()) {
      state = DiagnosticTestState.missingLearningGoal();
      return;
    } else {
      learningGoal = mockLearningGoal.toOption();
    }

    final successOrFailure = await test_service.getDiagnosticTest(learningGoalId).run(testApi);
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

// final diagnosticTestControllerProvider = NotifierProvider.autoDispose((ref) => ref)
//     .family<DiagnosticTestController, DiagnosticTestState, String>(() => DiagnosticTestController());
final diagnosticTestControllerProvider = StateNotifierProvider.autoDispose
    .family<DiagnosticTestController, DiagnosticTestState, String>((ref, learningGoalId) =>
        DiagnosticTestController(learningGoalId, ref.read(testApi), ref.read(knowledgeApiProvider)));
