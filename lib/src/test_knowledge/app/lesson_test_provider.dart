import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../knowledge/domain/i_knowledge.dart';
import '../../test_knowledge/data/test_knowledge_service.dart' as test_service;
import '../../test_knowledge/domain/i_test_knowledge.dart';
import '../data/test_knowledge.dart';
import 'test_provider.dart';

part 'lesson_test_provider.freezed.dart';
part 'lesson_test_state.dart';

class LessonTestNotifier extends StateNotifier<LessonTestState> {
  final ITestKnowledge testApi;
  final IKnowledgeApi knowledgeApi;
  final String lessonGroupId;
  LessonTestNotifier(this.testApi, this.knowledgeApi, this.lessonGroupId) : super(LessonTestState.initialize()) {
    init();
  }

  late List<Question> questions;
  late Option<LearningGoal> learningGoal = none();

  void initialize() {
    state = LessonTestState.initialize();
  }

  Future<void> init() async {
    state = LessonTestState.loading();
    final successOrFailure = await test_service.getTest(lessonGroupId).run(testApi);
    if (!mounted) return;
    state = successOrFailure.fold((l) => LessonTestState.error(), (data) {
      questions = data.questions;
      return LessonTestState.loaded(data);
    });
    if (successOrFailure.isRight()) {
      final isDone = successOrFailure.getOrElse((l) => TestContent.empty()).done;
      if (isDone) {
        final testResultSuccessOrFailure = await test_service.getTestResult(lessonGroupId).run(testApi);
        if (testResultSuccessOrFailure.isRight()) {
          state = state.copyWith(testResult: optionOf(testResultSuccessOrFailure.getOrElse((l) => TestResult.empty())));
        } else {
          state = state.copyWith(hasError: true);
        }
      }
    }
    final selectedLearningGoal = await knowledge_service.getSelectedLearningGoal().run(knowledgeApi);
    learningGoal = selectedLearningGoal.getRight();
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
    final content = state.content.getOrElse(() => TestContent.empty());
    content.startedAt = DateTime.now();
    state = state.copyWith(content: some(content));
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

  void select(String learningPointId) {
    final questions = state.content.getOrElse(() => TestContent.empty()).questions;
    state = state.copyWith(
        currentQuestionIndex:
            some(questions.indexOf(questions.firstWhere((q) => q.learningPointId == learningPointId))));
  }
}

final testNotifierProvider = StateNotifierProvider.autoDispose.family<LessonTestNotifier, LessonTestState, String>(
  (ref, lessonGroupId) => LessonTestNotifier(ref.read(testApi), ref.read(knowledgeApiProvider), lessonGroupId),
);
