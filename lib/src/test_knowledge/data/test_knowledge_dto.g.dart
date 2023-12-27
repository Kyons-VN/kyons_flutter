// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_knowledge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestContentDtoImpl _$$TestContentDtoImplFromJson(Map<String, dynamic> json) =>
    _$TestContentDtoImpl(
      id: json['test_id'] as int? ?? 0,
      questions: (json['data'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$TestContentDtoImplToJson(
        _$TestContentDtoImpl instance) =>
    <String, dynamic>{
      'test_id': instance.id,
      'data': instance.questions,
      'done': instance.done,
    };

_$QuestionDtoImpl _$$QuestionDtoImplFromJson(Map<String, dynamic> json) =>
    _$QuestionDtoImpl(
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

Map<String, dynamic> _$$QuestionDtoImplToJson(_$QuestionDtoImpl instance) =>
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

_$AnswerDtoImpl _$$AnswerDtoImplFromJson(Map<String, dynamic> json) =>
    _$AnswerDtoImpl(
      id: json['id'] as int,
      value: json['value'] as String,
      order: json['order'] as int? ?? 0,
      isCorrect: json['is_correct'] as bool? ?? false,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$AnswerDtoImplToJson(_$AnswerDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'order': instance.order,
      'is_correct': instance.isCorrect,
      'content': instance.content,
    };

_$AnswerResultDtoImpl _$$AnswerResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerResultDtoImpl(
      topicId: json['topic_id'] as int,
      categoryId: json['category_id'] as int,
      questionId: json['question_id'] as int,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$AnswerResultDtoImplToJson(
        _$AnswerResultDtoImpl instance) =>
    <String, dynamic>{
      'topic_id': instance.topicId,
      'category_id': instance.categoryId,
      'question_id': instance.questionId,
      'score': instance.score,
    };

_$AnswerReviewDtoImpl _$$AnswerReviewDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerReviewDtoImpl(
      selectedAnswers: (json['selected_answer'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      rightAnswers:
          (json['right_answer'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$AnswerReviewDtoImplToJson(
        _$AnswerReviewDtoImpl instance) =>
    <String, dynamic>{
      'selected_answer': instance.selectedAnswers,
      'right_answer': instance.rightAnswers,
    };

_$TestResultDtoImpl _$$TestResultDtoImplFromJson(Map<String, dynamic> json) =>
    _$TestResultDtoImpl(
      score: (json['total_score'] as num).toDouble(),
      result: (json['result'] as List<dynamic>)
          .map((e) => AnswerResultDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: AnswerReviewDto.fromJson(json['review'] as Map<String, dynamic>),
      type: const TestTypeConverter().fromJson(json['type'] as String),
      referral: json['mocktest_referral'] as String? ?? '',
    );

Map<String, dynamic> _$$TestResultDtoImplToJson(_$TestResultDtoImpl instance) =>
    <String, dynamic>{
      'total_score': instance.score,
      'result': instance.result.map((e) => e.toJson()).toList(),
      'review': instance.review.toJson(),
      'type': const TestTypeConverter().toJson(instance.type),
      'mocktest_referral': instance.referral,
    };

_$MockTestItemDtoImpl _$$MockTestItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MockTestItemDtoImpl(
      id: json['id'] as int,
      createdDate: json['created_date'] as String,
      status: $enumDecode(_$MockTestStatusEnumMap, json['status']),
      score: (json['score'] as num?)?.toDouble() ?? 0,
      index: json['index'] as int? ?? 0,
    );

Map<String, dynamic> _$$MockTestItemDtoImplToJson(
        _$MockTestItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_date': instance.createdDate,
      'status': _$MockTestStatusEnumMap[instance.status]!,
      'score': instance.score,
      'index': instance.index,
    };

const _$MockTestStatusEnumMap = {
  MockTestStatus.pending: 'pending',
  MockTestStatus.active: 'active',
  MockTestStatus.mockTestSubmitted: 'mock_test_submitted',
  MockTestStatus.learningPathReceived: 'learning_path_received',
  MockTestStatus.learningPathActivated: 'learning_path_activated',
  MockTestStatus.learningPathDeactivated: 'learning_path_deactivated',
};
