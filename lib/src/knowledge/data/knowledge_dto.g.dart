// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectDtoImpl _$$SubjectDtoImplFromJson(Map<String, dynamic> json) =>
    _$SubjectDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      label: json['label'] as String,
      programs: (json['programs'] as List<dynamic>)
          .map((e) => ProgramDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectDtoImplToJson(_$SubjectDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'label': instance.label,
      'programs': instance.programs.map((e) => e.toJson()).toList(),
    };

_$ProgramDtoImpl _$$ProgramDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProgramDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      subjectId: json['subject_id'] as int,
    );

Map<String, dynamic> _$$ProgramDtoImplToJson(_$ProgramDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subject_id': instance.subjectId,
    };

_$LessonItemDtoImpl _$$LessonItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$LessonItemDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      isNew: json['new'] as bool,
    );

Map<String, dynamic> _$$LessonItemDtoImplToJson(_$LessonItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'new': instance.isNew,
    };

_$LearningGoalPathDtoImpl _$$LearningGoalPathDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningGoalPathDtoImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) =>
              LearningGoalCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      progress: (json['complete_percentage'] as num).toDouble(),
      isNewUser: json['new_user'] as bool? ?? false,
    );

Map<String, dynamic> _$$LearningGoalPathDtoImplToJson(
        _$LearningGoalPathDtoImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'complete_percentage': instance.progress,
      'new_user': instance.isNewUser,
    };

_$LearningGoalCategoryDtoImpl _$$LearningGoalCategoryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningGoalCategoryDtoImpl(
      isCompleted: json['completed'] as bool,
      categoryDto:
          CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      lessonsDto: (json['lesson_list'] as List<dynamic>)
          .map((e) => LessonItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LearningGoalCategoryDtoImplToJson(
        _$LearningGoalCategoryDtoImpl instance) =>
    <String, dynamic>{
      'completed': instance.isCompleted,
      'category': instance.categoryDto.toJson(),
      'lesson_list': instance.lessonsDto.map((e) => e.toJson()).toList(),
    };

_$LessonGroupDtoImpl _$$LessonGroupDtoImplFromJson(Map<String, dynamic> json) =>
    _$LessonGroupDtoImpl(
      id: json['id'] as String,
      lessonInfos: (json['lessonInfos'] as List<dynamic>)
          .map((e) => LessonInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonGroupDtoImplToJson(
        _$LessonGroupDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonInfos': instance.lessonInfos.map((e) => e.toJson()).toList(),
    };

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TopicDtoImpl _$$TopicDtoImplFromJson(Map<String, dynamic> json) =>
    _$TopicDtoImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$TopicDtoImplToJson(_$TopicDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$LessonInfoDtoImpl _$$LessonInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$LessonInfoDtoImpl(
      category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      topic: TopicDto.fromJson(json['topic'] as Map<String, dynamic>),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LessonInfoDtoImplToJson(_$LessonInfoDtoImpl instance) =>
    <String, dynamic>{
      'category': instance.category.toJson(),
      'topic': instance.topic.toJson(),
      'lessons': instance.lessons.map((e) => e.toJson()).toList(),
    };

_$LessonDtoImpl _$$LessonDtoImplFromJson(Map<String, dynamic> json) =>
    _$LessonDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      learningPointId: json['learning_point_id'] as int,
      learningPointDifficultyId: json['learning_point_difficulty_id'] as int,
      difficultyLevel: json['difficulty_level'] as int,
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$LessonDtoImplToJson(_$LessonDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'learning_point_id': instance.learningPointId,
      'learning_point_difficulty_id': instance.learningPointDifficultyId,
      'difficulty_level': instance.difficultyLevel,
      'content': instance.content,
    };

_$LearningPointDtoImpl _$$LearningPointDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningPointDtoImpl(
      id: json['id'] as int,
      learningPoint: json['learning_point'] as String,
      difficultyId: json['difficulty_id'] as int,
      topicId: json['topic_id'] as int,
      topicName: json['topic_name'] as String,
    );

Map<String, dynamic> _$$LearningPointDtoImplToJson(
        _$LearningPointDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'learning_point': instance.learningPoint,
      'difficulty_id': instance.difficultyId,
      'topic_id': instance.topicId,
      'topic_name': instance.topicName,
    };

_$LearningGoalDtoImpl _$$LearningGoalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningGoalDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      minTopic: json['min_topic_numb'] as int? ?? 0,
      maxTopic: json['max_topic_numb'] as int? ?? 99,
      mockTestTemplates: (json['mock_test_templates'] as List<dynamic>?)
              ?.map((e) =>
                  MockTestTemplateDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      testDuration: json['mock_test_duration'] as int? ?? 0,
      totalQuestions: json['numb_questions'] as int? ?? 0,
      canSelectTopic: json['allow_select'] as bool? ?? false,
    );

Map<String, dynamic> _$$LearningGoalDtoImplToJson(
        _$LearningGoalDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min_topic_numb': instance.minTopic,
      'max_topic_numb': instance.maxTopic,
      'mock_test_templates':
          instance.mockTestTemplates.map((e) => e.toJson()).toList(),
      'mock_test_duration': instance.testDuration,
      'numb_questions': instance.totalQuestions,
      'allow_select': instance.canSelectTopic,
    };

_$MockTestTemplateDtoImpl _$$MockTestTemplateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MockTestTemplateDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MockTestTemplateDtoImplToJson(
        _$MockTestTemplateDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$StudentLearningGoalDtoImpl _$$StudentLearningGoalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentLearningGoalDtoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      programName: json['program_name'] as String,
      completePercentage: json['complete_percentage'] as int,
    );

Map<String, dynamic> _$$StudentLearningGoalDtoImplToJson(
        _$StudentLearningGoalDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'program_name': instance.programName,
      'complete_percentage': instance.completePercentage,
    };
