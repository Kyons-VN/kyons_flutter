import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';

class TestContent {
  final String id;
  final List<Question> questions;
  final bool done;
  DateTime startedAt = DateTime.now();
  DateTime endedAt = DateTime.now();
  Submission? _submission;
  List<Map<String, int>> get submission => _submission!.value.getOrElse((l) => []);
  void setSubmission(Map<String, String> answersResult) {
    _submission = Submission(answersResult);
  }

  TestContent({required this.id, required this.questions, required this.done});
  factory TestContent.empty({List<Question> questions = const []}) =>
      TestContent(id: '', questions: questions, done: false);
}

class Question {
  final String id;
  final String content;
  final List<Answer> answers;
  final String learningPointDifficultyId;
  final String difficultyLevel;
  final String learningPointId;
  final Topic topic;
  final Category category;

  Question({
    required this.topic,
    required this.id,
    required this.content,
    required this.answers,
    required this.learningPointDifficultyId,
    required this.difficultyLevel,
    required this.learningPointId,
    required this.category,
  });

  static empty() => Question(
        id: '',
        content: '',
        answers: [],
        learningPointDifficultyId: '',
        difficultyLevel: '',
        learningPointId: '',
        topic: Topic.empty(),
        category: Category.empty(),
      );
}

class Answer {
  final String id;
  final int order;
  final String value;
  final String content;

  Answer({
    required this.id,
    required this.order,
    required this.value,
    required this.content,
  });
}

class Submission extends ValueObject<List<Map<String, int>>> {
  const Submission._(this.value);

  @override
  final Either<ValueFailure<List<Map<String, int>>>, List<Map<String, int>>> value;

  factory Submission(Map<String, String> answersResult) {
    assert(answersResult.isNotEmpty);
    return Submission._(
      validateSubmission(answersResult),
    );
  }
}

Either<ValueFailure<List<Map<String, int>>>, List<Map<String, int>>> validateSubmission(
  Map<String, dynamic> input,
) {
  final result = input
      .map((questionId, answerKey) => MapEntry(questionId, {
            'question_id': int.parse(questionId),
            'answer_key_id': int.parse(answerKey),
          }))
      .entries
      .map((e) => e.value)
      .toList();
  if (input.isNotEmpty) {
    return right(result);
  } else {
    return left(
      ValueFailure.emptyValue(failedValue: result),
    );
  }
}

class TestResult {
  final double score;
  final AnswerResult result;
  final AnswerReview review;

  TestResult({required this.score, required this.result, required this.review});
  factory TestResult.empty() => TestResult(score: 0, result: AnswerResult.empty(), review: AnswerReview.empty());
}

class AnswerReview {
  final List<String> selectedAnswers;
  final List<String> rightAnswers;

  AnswerReview({required this.selectedAnswers, required this.rightAnswers});
  factory AnswerReview.empty() => AnswerReview(rightAnswers: [], selectedAnswers: []);
}

class AnswerResult {
  final Map<String, int> categories;
  final Map<String, int> topics;
  final int score;
  final int maxScore;
  final Map<String, List<String>> topicWrongQuestions;

  AnswerResult(
      {required this.score,
      required this.topicWrongQuestions,
      required this.maxScore,
      required this.categories,
      required this.topics});
  factory AnswerResult.empty() =>
      AnswerResult(categories: {}, topics: {}, maxScore: 0, topicWrongQuestions: {}, score: 0);
}

extension XDateTion on DateTime {
  // Server API time format: yyyy-mm-dd H:m:s
  String get serverRequest => DateFormat('yyyy-MM-dd H:m:s').format(this);
}
