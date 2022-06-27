import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';

part 'test_knowledge_dto.freezed.dart';
part 'test_knowledge_dto.g.dart';

@freezed
class TestContentDto with _$TestContentDto {
  const TestContentDto._();
  const factory TestContentDto({
    required int id,
    @JsonKey(name: 'data') required List<Map<String, dynamic>> questions,
    required bool done,
  }) = _TestContentDto;

  factory TestContentDto.fromJson(Map<String, dynamic> json) => _$TestContentDtoFromJson(json);
  TestContent toDomain() => TestContent(
      id: '', questions: questions.map(QuestionDto.fromJson).map((dto) => dto.toDomain()).toList(), done: done);
}

@freezed
class QuestionDto with _$QuestionDto {
  const QuestionDto._();
  const factory QuestionDto({
    required int id,
    required String content,
    required List<Map<String, dynamic>> answers,
  }) = _QuestionDto;

  factory QuestionDto.fromJson(Map<String, dynamic> json) => _$QuestionDtoFromJson(json);
  Question toDomain() => Question(
        id: id.toString(),
        content: content,
        answers: answers.map(AnswerDto.fromJson).map((dto) => dto.toDomain()).toList(),
      );
}

@freezed
class AnswerDto with _$AnswerDto {
  const AnswerDto._();
  const factory AnswerDto({
    required int id,
    required String value,
    required int order,
    required String content,
  }) = _AnswerDto;

  factory AnswerDto.fromJson(Map<String, dynamic> json) => _$AnswerDtoFromJson(json);
  Answer toDomain() => Answer(id: id.toString(), value: value, order: order, content: content);
}
