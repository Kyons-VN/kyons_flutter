import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';

class TestContent {
  final String id;
  final List<Question> questions;
  final bool done;
  late DateTime startedAt;
  late DateTime endedAt;
  late Submission _submission;
  List<Map<String, int>> get submission => _submission.value.getOrElse((l) => []);
  void setSubmission(Map<String, String> answersResult) {
    _submission = Submission(answersResult);
  }

  TestContent({required this.id, required this.questions, required this.done});
  factory TestContent.empty() => TestContent(id: '', questions: [], done: false);
}

class Question {
  final String id;
  final String content;
  final List<Answer> answers;

  Question({required this.id, required this.content, required this.answers});
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

// class Submission {
//   final List<Map<String, dynamic>> result;
//   Submission(this.result);

//   factory Submission.fromJson(Map<String, dynamic> answersResult) {
//     final result = answersResult
//         .map((questionId, answerKey) => MapEntry(questionId, {
//               'question_id': questionId,
//               'answer_key_id': answerKey,
//             }))
//         .entries
//         .map((e) => e.value)
//         .toList();
//     return Submission(result);
//   }
// }