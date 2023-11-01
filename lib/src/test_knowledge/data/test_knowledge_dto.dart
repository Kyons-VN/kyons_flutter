import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_entities.dart';

import '../../knowledge/data/knowledge_dto.dart';
import '../../test_knowledge/data/test_knowledge.dart';
import '../domain/i_test_knowledge.dart';

part 'test_knowledge_dto.freezed.dart';
part 'test_knowledge_dto.g.dart';

@freezed
class TestContentDto with _$TestContentDto {
  const TestContentDto._();
  const factory TestContentDto({
    @JsonKey(name: 'test_id', defaultValue: 0) required int id,
    @JsonKey(name: 'data', defaultValue: []) required List<Map<String, dynamic>> questions,
    @JsonKey(defaultValue: false) required bool done,
  }) = _TestContentDto;

  factory TestContentDto.fromJson(Map<String, dynamic> json) => _$TestContentDtoFromJson(json);
  TestContent toDomain() => TestContent(
      id: id.toString(),
      questions: questions.map(QuestionDto.fromJson).map((dto) => dto.toDomain()).toList(),
      done: done);
}

@freezed
class QuestionDto with _$QuestionDto {
  const QuestionDto._();
  const factory QuestionDto({
    required int id,
    required String content,
    @JsonKey(name: 'answer_keys') required List<Map<String, dynamic>> answers,
    @JsonKey(
      name: 'learning_point_difficulty_id',
      defaultValue: 0,
    )
    required int learningPointDifficultyId,
    @JsonKey(
      name: 'difficulty_level',
      defaultValue: 0,
    )
    required int difficultyLevel,
    @JsonKey(
      name: 'learning_point_id',
      defaultValue: 0,
    )
    required int learningPointId,
    @JsonKey(name: 'topic_id', defaultValue: 0) required int topicId,
    @JsonKey(name: 'topic_name', defaultValue: '') required String topicName,
    @JsonKey(name: 'category_id', defaultValue: 0) required int categoryId,
    @JsonKey(name: 'category_name', defaultValue: '') required String categoryName,
  }) = _QuestionDto;

  factory QuestionDto.fromJson(Map<String, dynamic> json) => _$QuestionDtoFromJson(json);
  Question toDomain() => Question(
        id: id.toString(),
        content: content,
        answers: answers.map(AnswerDto.fromJson).map((dto) => dto.toDomain()).toList(),
        learningPointDifficultyId: learningPointDifficultyId.toString(),
        difficultyLevel: difficultyLevel.toString(),
        learningPointId: learningPointId.toString(),
        topic: TopicDto.fromJson({'id': topicId, 'name': topicName}).toDomain(),
        category: CategoryDto.fromJson({'id': categoryId, 'name': categoryName}).toDomain(),
      );
}

@freezed
class AnswerDto with _$AnswerDto {
  const AnswerDto._();
  const factory AnswerDto({
    required int id,
    required String value,
    @JsonKey(defaultValue: 0) required int order,
    @JsonKey(defaultValue: false, name: 'is_correct') required bool isCorrect,
    required String content,
  }) = _AnswerDto;

  factory AnswerDto.fromJson(Map<String, dynamic> json) => _$AnswerDtoFromJson(json);
  Answer toDomain() => Answer(id: id.toString(), value: value, order: order, content: content, isCorrect: isCorrect);
}

@freezed
class AnswerResultDto with _$AnswerResultDto {
  const AnswerResultDto._();

  const factory AnswerResultDto({
    @JsonKey(name: 'topic_id') required int topicId,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'question_id') required int questionId,
    required int score,
  }) = _AnswerResultDto;

  factory AnswerResultDto.fromJson(Map<String, dynamic> json) => _$AnswerResultDtoFromJson(json);
}

@freezed
class AnswerReviewDto with _$AnswerReviewDto {
  const AnswerReviewDto._();

  const factory AnswerReviewDto({
    @JsonKey(name: 'selected_answer') required List<int> selectedAnswers,
    @JsonKey(name: 'right_answer') required List<int> rightAnswers,
  }) = _AnswerReviewDto;

  factory AnswerReviewDto.fromJson(Map<String, dynamic> json) => _$AnswerReviewDtoFromJson(json);

  AnswerReview toDomain() => AnswerReview(
      selectedAnswers: selectedAnswers.map((e) => e.toString()).toList(),
      rightAnswers: rightAnswers.map((e) => e.toString()).toList());
}

@freezed
class TestResultDto with _$TestResultDto {
  const TestResultDto._();
  const factory TestResultDto({
    @JsonKey(name: 'total_score') required double score,
    required List<AnswerResultDto> result,
    required AnswerReviewDto review,
    @TestTypeConverter() required TestType type,
    @JsonKey(name: 'mocktest_referral', defaultValue: '') required String referral,
  }) = _TestResultDto;

  // Function _fromJson(Map<String, dynamic> json) {
  //   switch (json['type']) {
  //     case 'Mock':
  //       json['type'] = 'mock';
  //       break;
  //     case 'Exercise':
  //       json['type'] = 'exercise';
  //       break;
  //     case 'Lesson':
  //       json['type'] = 'exam';
  //       break;
  //   }
  //   TestType.values
  //       .firstWhere((e) => e.toString() == 'TestType.${json['type']}', orElse: () => TestType.undefined)
  //       .index;
  //   return _$TestResultDtoFromJson(json);
  // }

  factory TestResultDto.fromJson(Map<String, dynamic> json) => _$TestResultDtoFromJson(json);

  TestResult toDomain() {
    final total = result.length;
    final categoryToScoreMap = result.fold(<String, int>{}, (Map<String, int> previousValue, element) {
      previousValue[element.categoryId.toString()] =
          (previousValue[element.categoryId.toString()] ?? 0) + element.score;
      return previousValue;
    });
    final topicScoreMap = result.fold(<String, int>{}, (Map<String, int> previousValue, element) {
      previousValue[element.topicId.toString()] = (previousValue[element.topicId.toString()] ?? 0) + element.score;
      return previousValue;
    });
    final topicWrongQuestionsMap = result.fold<Map<String, List<String>>>({}, ((previousValue, element) {
      if (element.score == 0) {
        previousValue[element.topicId.toString()] = (previousValue[element.topicId.toString()] ?? [])
          ..add(element.questionId.toString());
      }
      return previousValue;
    }));

    final resultScore = result.map((r) => r.score).reduce((acc, next) => acc + next);

    final answerResult = AnswerResult(
      categories: categoryToScoreMap,
      topics: topicScoreMap,
      score: resultScore,
      maxScore: total,
      topicWrongQuestions: topicWrongQuestionsMap,
    );
    return TestResult(
      score: score,
      result: answerResult,
      review: review.toDomain(),
      type: type,
      referral: referral,
    );
  }
}

class TestTypeConverter implements JsonConverter<TestType, String> {
  const TestTypeConverter();

  @override
  TestType fromJson(String type) {
    String result = 'undefined';
    switch (type) {
      case 'Mock':
        result = 'mock';
        break;
      case 'Exercise':
        result = 'exercise';
        break;
      case 'Lesson':
        result = 'exam';
        break;
    }
    return TestType.values.firstWhere((e) => e.toString() == 'TestType.$result', orElse: () => TestType.undefined);
  }

  @override
  String toJson(TestType type) {
    switch (type) {
      case TestType.mock:
        return 'Mock';
      case TestType.exercise:
        return 'Exercise';
      case TestType.exam:
        return 'Lesson';
      case TestType.undefined:
        return 'Undefined';
    }
  }
}

@freezed
class MockTestItemDto with _$MockTestItemDto {
  const MockTestItemDto._();
  const factory MockTestItemDto({
    required int id,
    @JsonKey(name: 'created_date') required String createdDate,
    required MockTestStatus status,
    @JsonKey(defaultValue: 0) required double score,
    @JsonKey(defaultValue: 0) required int index,
  }) = _MockTestItemDto;

  factory MockTestItemDto.fromJson(Map<String, dynamic> json) => _$MockTestItemDtoFromJson(json);

  MockTestItem toDomain() => MockTestItem(
      id: id.toString(), createdDate: DateTime.parse(createdDate), status: status, score: score, index: index);
}
