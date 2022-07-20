// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_knowledge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TestContentDto _$$_TestContentDtoFromJson(Map<String, dynamic> json) =>
    _$_TestContentDto(
      id: json['test_id'] as int? ?? 0,
      questions: (json['data'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TestContentDtoToJson(_$_TestContentDto instance) =>
    <String, dynamic>{
      'test_id': instance.id,
      'data': instance.questions,
      'done': instance.done,
    };

_$_QuestionDto _$$_QuestionDtoFromJson(Map<String, dynamic> json) =>
    _$_QuestionDto(
      id: json['id'] as int,
      content: json['content'] as String,
      answers: (json['answer_keys'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      learningPointDifficultyId:
          json['learning_point_difficulty_id'] as int? ?? 0,
      difficultyLevel: json['difficulty_level'] as int? ?? 0,
      learningPointId: json['learning_point_id'] as int? ?? 0,
      topicId: json['topic_id'] as int? ?? 0,
      topicName: json['topic_name'] as String? ?? '',
      categoryId: json['category_id'] as int? ?? 0,
      categoryName: json['category_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_QuestionDtoToJson(_$_QuestionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answer_keys': instance.answers,
      'learning_point_difficulty_id': instance.learningPointDifficultyId,
      'difficulty_level': instance.difficultyLevel,
      'learning_point_id': instance.learningPointId,
      'topic_id': instance.topicId,
      'topic_name': instance.topicName,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
    };

_$_AnswerDto _$$_AnswerDtoFromJson(Map<String, dynamic> json) => _$_AnswerDto(
      id: json['id'] as int,
      value: json['value'] as String,
      order: json['order'] as int? ?? 0,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$_AnswerDtoToJson(_$_AnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'order': instance.order,
      'content': instance.content,
    };

_$_AnswerResultDto _$$_AnswerResultDtoFromJson(Map<String, dynamic> json) =>
    _$_AnswerResultDto(
      topicId: json['topic_id'] as int,
      categoryId: json['category_id'] as int,
      questionId: json['question_id'] as int,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$_AnswerResultDtoToJson(_$_AnswerResultDto instance) =>
    <String, dynamic>{
      'topic_id': instance.topicId,
      'category_id': instance.categoryId,
      'question_id': instance.questionId,
      'score': instance.score,
    };

_$_AnswerReviewDto _$$_AnswerReviewDtoFromJson(Map<String, dynamic> json) =>
    _$_AnswerReviewDto(
      selectedAnswers: (json['selected_answer'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      rightAnswers:
          (json['right_answer'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_AnswerReviewDtoToJson(_$_AnswerReviewDto instance) =>
    <String, dynamic>{
      'selected_answer': instance.selectedAnswers,
      'right_answer': instance.rightAnswers,
    };

_$_TestResultDto _$$_TestResultDtoFromJson(Map<String, dynamic> json) =>
    _$_TestResultDto(
      score: (json['total_score'] as num).toDouble(),
      result: (json['result'] as List<dynamic>)
          .map((e) => AnswerResultDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: AnswerReviewDto.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TestResultDtoToJson(_$_TestResultDto instance) =>
    <String, dynamic>{
      'total_score': instance.score,
      'result': instance.result,
      'review': instance.review,
    };
