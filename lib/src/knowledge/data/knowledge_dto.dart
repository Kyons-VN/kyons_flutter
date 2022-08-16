import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';

part 'knowledge_dto.freezed.dart';
part 'knowledge_dto.g.dart';

@freezed
class SubjectDto with _$SubjectDto {
  const SubjectDto._();
  const factory SubjectDto({
    required int id,
    required String label,
    required List<ProgramDto> programs,
  }) = _SubjectDto;

  factory SubjectDto.fromJson(Map<String, dynamic> json) => _$SubjectDtoFromJson(json);
  Subject toDomain() => Subject(id: id.toString(), name: label, programs: programs.map((e) => e.toDomain()).toList());
}

@freezed
class ProgramDto with _$ProgramDto {
  const ProgramDto._();
  const factory ProgramDto({
    required int id,
    required String name,
    @JsonKey(name: 'subject_id') required int subjectId,
  }) = _ProgramDto;

  factory ProgramDto.fromJson(Map<String, dynamic> json) => _$ProgramDtoFromJson(json);
  Program toDomain() => Program(id: id.toString(), name: name, subjectId: subjectId.toString());
}

@freezed
class LessonItemDto with _$LessonItemDto {
  const LessonItemDto._();
  const factory LessonItemDto({
    required String id,
    @JsonKey(name: 'new') required bool isNew,
  }) = _LessonItemDto;

  factory LessonItemDto.fromJson(Map<String, dynamic> json) => _$LessonItemDtoFromJson(json);
  LessonItem toDomain() => LessonItem(id: id, isNew: isNew);
}

@freezed
class LearningPathDto with _$LearningPathDto {
  const LearningPathDto._();
  const factory LearningPathDto({required List<LessonItemDto> lessonsDto}) = _LearningPathDto;

  factory LearningPathDto.fromJson(Map<String, dynamic> json) => _$LearningPathDtoFromJson(json);
  LearningPath toDomain() => LearningPath(lessonsDto.map((lessonDto) => lessonDto.toDomain()).toList());
}

@freezed
class LessonGroupDto with _$LessonGroupDto {
  const LessonGroupDto._();

  const factory LessonGroupDto({
    required String id,
    required List<LessonInfoDto> lessonInfos,
  }) = _LessonGroupDto;

  factory LessonGroupDto.fromJson(Map<String, dynamic> json) => _$LessonGroupDtoFromJson(json);

  LessonGroup toDomain() =>
      LessonGroup(id: id, lessonInfos: lessonInfos.map((lessonDto) => lessonDto.toDomain()).toList());
}

@freezed
class CategoryDto with _$CategoryDto {
  const CategoryDto._();

  const factory CategoryDto({
    required int id,
    required String name,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

  Category toDomain() => Category(id: id.toString(), name: name);
}

@freezed
class TopicDto with _$TopicDto {
  const TopicDto._();

  const factory TopicDto({
    @JsonKey(defaultValue: 0) required int id,
    @JsonKey(defaultValue: '') required String name,
  }) = _TopicDto;

  factory TopicDto.fromJson(Map<String, dynamic> json) => _$TopicDtoFromJson(json);

  Topic toDomain() {
    if (id == 0) return Topic.empty();
    return Topic(id: id.toString(), name: name);
  }

  factory TopicDto.fromId(int id) => TopicDto(id: id, name: '');
}

@freezed
class LessonInfoDto with _$LessonInfoDto {
  const LessonInfoDto._();

  const factory LessonInfoDto({
    required CategoryDto category,
    required TopicDto topic,
    required List<LessonDto> lessons,
  }) = _LessonInfoDto;

  factory LessonInfoDto.fromJson(Map<String, dynamic> json) => _$LessonInfoDtoFromJson(json);

  LessonInfo toDomain() => LessonInfo(
      category: category.toDomain(),
      topic: topic.toDomain(),
      lessons: lessons
          .map((lessonDto) => lessonDto.toDomain(category: category.toDomain(), topic: topic.toDomain()))
          .toList());
}

@freezed
class LessonDto with _$LessonDto {
  const LessonDto._();

  const factory LessonDto({
    required int id,
    required String name,
    @JsonKey(name: 'learning_point_id') required int learningPointId,
    @JsonKey(name: 'learning_point_difficulty_id') required int learningPointDifficultyId,
    @JsonKey(name: 'difficulty_level') required int difficultyLevel,
    @JsonKey(defaultValue: '') required String content,
  }) = _LessonDto;

  factory LessonDto.fromJson(Map<String, dynamic> json) => _$LessonDtoFromJson(json);

  Lesson toDomain({required Category category, required Topic topic}) => Lesson(
        id: id.toString(),
        difficultyLevel: difficultyLevel,
        name: name,
        learningPointId: learningPointId.toString(),
        content: content,
        category: category,
        topic: topic,
        learningPointDifficultyId: learningPointDifficultyId.toString(),
      );
}

@freezed
class LearningPointDto with _$LearningPointDto {
  const LearningPointDto._();
  const factory LearningPointDto({
    required int id,
    @JsonKey(name: 'learning_point') required String learningPoint,
    @JsonKey(name: 'difficulty_id') required int difficultyId,
    @JsonKey(name: 'topic_id') required int topicId,
    @JsonKey(name: 'topic_name') required String topicName,
  }) = _LearningPointDto;
  factory LearningPointDto.fromJson(Map<String, dynamic> json) => _$LearningPointDtoFromJson(json);
  LearningPoint toDomain() => LearningPoint(
      id: id.toString(),
      diffucultyId: difficultyId.toString(),
      learningPoint: learningPoint,
      topic: TopicDto(id: topicId, name: topicName).toDomain());
}
