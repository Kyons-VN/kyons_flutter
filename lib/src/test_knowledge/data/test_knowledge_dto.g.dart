// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_knowledge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestContentDto _$$_TestContentDtoFromJson(Map<String, dynamic> json) =>
    _$_TestContentDto(
      id: json['id'] as int,
      questions: (json['data'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      done: json['done'] as bool,
    );

Map<String, dynamic> _$$_TestContentDtoToJson(_$_TestContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.questions,
      'done': instance.done,
    };

_$_QuestionDto _$$_QuestionDtoFromJson(Map<String, dynamic> json) =>
    _$_QuestionDto(
      id: json['id'] as int,
      content: json['content'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$_QuestionDtoToJson(_$_QuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answers': instance.answers,
    };

_$_AnswerDto _$$_AnswerDtoFromJson(Map<String, dynamic> json) => _$_AnswerDto(
      id: json['id'] as int,
      value: json['value'] as String,
      order: json['order'] as int,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_AnswerDtoToJson(_$_AnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'order': instance.order,
      'content': instance.content,
    };
