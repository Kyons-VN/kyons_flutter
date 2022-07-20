// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectDto _$$_SubjectDtoFromJson(Map<String, dynamic> json) =>
    _$_SubjectDto(
      id: json['id'] as int,
      label: json['label'] as String,
      programs: (json['programs'] as List<dynamic>)
          .map((e) => ProgramDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SubjectDtoToJson(_$_SubjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'programs': instance.programs,
    };

_$_ProgramDto _$$_ProgramDtoFromJson(Map<String, dynamic> json) =>
    _$_ProgramDto(
      id: json['id'] as int,
      name: json['name'] as String,
      subjectId: json['subject_id'] as int,
    );

Map<String, dynamic> _$$_ProgramDtoToJson(_$_ProgramDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subject_id': instance.subjectId,
    };

_$_LessonItemDto _$$_LessonItemDtoFromJson(Map<String, dynamic> json) =>
    _$_LessonItemDto(
      id: json['id'] as String,
      isNew: json['new'] as bool,
    );

Map<String, dynamic> _$$_LessonItemDtoToJson(_$_LessonItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'new': instance.isNew,
    };

_$_LearningPathDto _$$_LearningPathDtoFromJson(Map<String, dynamic> json) =>
    _$_LearningPathDto(
      lessonsDto: (json['lessonsDto'] as List<dynamic>)
          .map((e) => LessonItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LearningPathDtoToJson(_$_LearningPathDto instance) =>
    <String, dynamic>{
      'lessonsDto': instance.lessonsDto,
    };

_$_LessonGroupDto _$$_LessonGroupDtoFromJson(Map<String, dynamic> json) =>
    _$_LessonGroupDto(
      id: json['id'] as String,
      lessonInfos: (json['lessonInfos'] as List<dynamic>)
          .map((e) => LessonInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LessonGroupDtoToJson(_$_LessonGroupDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonInfos': instance.lessonInfos,
    };

_$_CategoryDto _$$_CategoryDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoryDto(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CategoryDtoToJson(_$_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_TopicDto _$$_TopicDtoFromJson(Map<String, dynamic> json) => _$_TopicDto(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_TopicDtoToJson(_$_TopicDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_LessonInfoDto _$$_LessonInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_LessonInfoDto(
      category: CategoryDto.fromJson(json['category'] as Map<String, dynamic>),
      topic: TopicDto.fromJson(json['topic'] as Map<String, dynamic>),
      lessons: (json['lessons'] as List<dynamic>)
          .map((e) => LessonDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LessonInfoDtoToJson(_$_LessonInfoDto instance) =>
    <String, dynamic>{
      'category': instance.category,
      'topic': instance.topic,
      'lessons': instance.lessons,
    };

_$_LessonDto _$$_LessonDtoFromJson(Map<String, dynamic> json) => _$_LessonDto(
      id: json['id'] as int,
      name: json['name'] as String,
      learningPointId: json['learning_point_id'] as int,
      learningPointDifficultyId: json['learning_point_difficulty_id'] as int,
      difficultyLevel: json['difficulty_level'] as int,
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$_LessonDtoToJson(_$_LessonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'learning_point_id': instance.learningPointId,
      'learning_point_difficulty_id': instance.learningPointDifficultyId,
      'difficulty_level': instance.difficultyLevel,
      'content': instance.content,
    };
