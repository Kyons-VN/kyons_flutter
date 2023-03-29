import 'package:freezed_annotation/freezed_annotation.dart';

import '../../knowledge/data/knowledge_entities.dart';

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
    @JsonKey(name: 'learning_goal') required LearningGoalDto? learningGoal,
  }) = _ProgramDto;

  factory ProgramDto.fromJson(Map<String, dynamic> json) => _$ProgramDtoFromJson(json);
  Program toDomain() =>
      Program(id: id.toString(), name: name, subjectId: subjectId.toString(), learningGoal: learningGoal?.toDomain());
}

@freezed
class LessonItemDto with _$LessonItemDto {
  const LessonItemDto._();
  const factory LessonItemDto({
    required String id,
    required String name,
    @JsonKey(name: 'new') required bool isNew,
  }) = _LessonItemDto;

  factory LessonItemDto.fromJson(Map<String, dynamic> json) => _$LessonItemDtoFromJson(json);
  LessonItem toDomain() => LessonItem(id: id, name: name, isNew: isNew);
}

@freezed
class LearningGoalPathDto with _$LearningGoalPathDto {
  const LearningGoalPathDto._();
  const factory LearningGoalPathDto(
      {required List<LearningGoalCategoryDto> categories,
      @JsonKey(name: 'complete_percentage') required double progress,
      @JsonKey(name: 'new_user', defaultValue: false) required bool isNewUser}) = _LearningGoalPathDto;

  factory LearningGoalPathDto.fromJson(Map<String, dynamic> json) => _$LearningGoalPathDtoFromJson(json);
  LearningGoalPath toDomain() => LearningGoalPath(
      lessonCategories: categories.map((categoryDto) => categoryDto.toDomain()).toList(),
      progress: progress,
      isNewUser: isNewUser);
}

@freezed
class LearningGoalCategoryDto with _$LearningGoalCategoryDto {
  const LearningGoalCategoryDto._();
  const factory LearningGoalCategoryDto({
    @JsonKey(name: 'completed') required bool isCompleted,
    @JsonKey(name: 'category') required CategoryDto categoryDto,
    @JsonKey(name: 'lesson_list') required List<LessonItemDto> lessonsDto,
  }) = _LearningGoalCategoryDto;
  factory LearningGoalCategoryDto.fromJson(Map<String, dynamic> json) => _$LearningGoalCategoryDtoFromJson(json);
  LearningGoalCategory toDomain() => LearningGoalCategory(
        isCompleted: isCompleted,
        category: categoryDto.toDomain(),
        lessons: lessonsDto.map((lessonDto) => lessonDto.toDomain()).toList(),
      );
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

  TopicSelection toTopicSelection() {
    if (id == 0) return TopicSelection.empty();
    return TopicSelection(id: id.toString(), name: name);
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

@freezed
class LearningGoalDto with _$LearningGoalDto {
  const LearningGoalDto._();
  const factory LearningGoalDto({
    required int id,
    @JsonKey(defaultValue: 0) required double progress,
    required String name,
    @JsonKey(name: 'min_topic_numb', defaultValue: 0) required int minTopic,
    @JsonKey(name: 'max_topic_numb', defaultValue: 99) required int maxTopic,
  }) = _LearningGoalDto;
  factory LearningGoalDto.fromJson(Map<String, dynamic> json) => _$LearningGoalDtoFromJson(json);
  LearningGoal toDomain() =>
      LearningGoal(id: id.toString(), name: name, progress: progress, minTopics: minTopic, maxTopics: maxTopic);
}
