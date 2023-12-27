import '../domain/i_knowledge.dart';
import 'knowledge_dto.dart';

class Subject {
  final String id;
  final String name;
  final String label;
  final List<Program> programs;
  Subject({required this.label, required this.programs, required this.id, required this.name});
  factory Subject.empty() => Subject(id: '', name: '', programs: [], label: '');
  Map<String, dynamic> toJson() => toDto().toJson();
  SubjectDto toDto() => SubjectDto(
        id: int.parse(id),
        name: name,
        label: label,
        programs: programs.map((e) => e.toDto()).toList(),
      );
}

class Program {
  final String id;
  final String name;
  final String subjectId;

  Program({required this.subjectId, required this.id, required this.name});
  Map<String, dynamic> toJson() => toDto().toJson();

  factory Program.empty() => Program(subjectId: '', id: '', name: '');
  static String emptyJsonString() => Program.empty().toJson().toString();
  bool isEmpty() => id == '';
  ProgramDto toDto() => ProgramDto(
        id: int.parse(id),
        name: name,
        subjectId: int.parse(subjectId),
      );
}

class LearningGoal implements ILearningGoal {
  @override
  final String id;
  @override
  final String name;
  @override
  final int? maxTopics;
  @override
  final int? minTopics;
  @override
  final List<MockTestTemplate> mockTestTemplates;
  @override
  final bool canSelectTopic;
  @override
  final int testDuration;
  @override
  final int totalQuestions;

  LearningGoal(
      {required this.id,
      required this.name,
      required this.maxTopics,
      required this.minTopics,
      required this.mockTestTemplates,
      required this.canSelectTopic,
      required this.testDuration,
      required this.totalQuestions});

  factory LearningGoal.empty() => LearningGoal(
      id: '',
      canSelectTopic: false,
      mockTestTemplates: [],
      testDuration: 0,
      totalQuestions: 0,
      name: '',
      maxTopics: null,
      minTopics: null);

  StudentLearningGoal toStudentLearningGoal() =>
      StudentLearningGoal(id: id, name: name, programName: '', completePercentage: 0);
  // static String emptyJsonString() => LearningGoal.empty().toJson().toString();
  Map<String, dynamic> toJson() => toDto().toJson();
  bool isEmpty() => id == '';
  LearningGoalDto toDto() => LearningGoalDto(
        id: int.parse(id),
        name: name,
        canSelectTopic: canSelectTopic,
        mockTestTemplates: mockTestTemplates.map((e) => e.toDto()).toList(),
        testDuration: testDuration,
        totalQuestions: totalQuestions,
        maxTopic: maxTopics ?? 0,
        minTopic: minTopics ?? 0,
      );
}

class MockTestTemplate implements IMockTestTemplate {
  @override
  final String id;
  @override
  final String name;

  const MockTestTemplate({required this.id, required this.name});

  Map<String, dynamic> toJson() => toDto().toJson();

  MockTestTemplateDto toDto() => MockTestTemplateDto(id: int.parse(id), name: name);
}

class LearningGoalPath {
  final List<LearningGoalCategory> lessonCategories;
  final double progress;
  final bool isNewUser;
  const LearningGoalPath({required this.lessonCategories, required this.progress, this.isNewUser = false});
  factory LearningGoalPath.empty() => const LearningGoalPath(lessonCategories: [], progress: 0.0);

  List<Category> getCategories() => lessonCategories.map((e) => e.category).toList();
  List<LearningGoalCategory> getUncompletedLearningGoalCategories() =>
      lessonCategories.where((e) => !e.isCompleted).toList();
  LearningGoalCategory getLearningGoalCategoryById(String categoryId) =>
      lessonCategories.firstWhere((e) => e.category.id == categoryId, orElse: () => LearningGoalCategory.empty());
}

class LearningGoalCategory {
  final bool isCompleted;
  final Category category;
  final List<LessonItem> lessons;

  LearningGoalCategory({this.isCompleted = false, required this.category, required this.lessons});
  factory LearningGoalCategory.empty() => LearningGoalCategory(category: Category.empty(), lessons: []);
}

class LessonItem {
  final String id;
  final String name;
  final bool isNew;

  LessonItem({required this.id, required this.name, this.isNew = false});
  factory LessonItem.empty() => LessonItem(id: '', name: '');
}

// class LearningPath {
//   final List<LessonItem> lessons;

//   const LearningPath(this.lessons);
//   int get length => lessons.length;
//   void push(Iterable<LessonItem> lessonsList) => lessons.addAll(lessonsList);
//   factory LearningPath.empty() => LearningPath([]);

//   LessonItem getLessonAt(int index) => lessons[index];
// }

class Category {
  final String id;
  final String name;

  const Category({required this.id, required this.name});
  factory Category.empty() => Category(id: '', name: '');
}

class Topic {
  final String id;
  final String name;

  const Topic({required this.id, required this.name});
  factory Topic.empty() => Topic(id: '', name: '');
}

class TopicSelection extends Topic {
  bool isSelected;

  TopicSelection({required super.id, required super.name, this.isSelected = false});
  factory TopicSelection.empty() => TopicSelection(id: '', name: '');
}

class LessonGroup {
  final String id;
  final List<LessonInfo> lessonInfos;

  LessonGroup({required this.id, required this.lessonInfos});
  factory LessonGroup.empty() => LessonGroup(id: '', lessonInfos: []);
}

class LessonInfo {
  final Category category;
  final Topic topic;
  final List<Lesson> lessons;

  const LessonInfo({required this.category, required this.topic, required this.lessons});
}

class Lesson {
  final String id;
  final String name;
  final String content;
  final String learningPointId;
  final String learningPointDifficultyId;
  final int difficultyLevel;
  final Category category;
  final Topic topic;

  const Lesson({
    required this.id,
    required this.name,
    required this.content,
    required this.difficultyLevel,
    required this.learningPointDifficultyId,
    required this.learningPointId,
    required this.category,
    required this.topic,
  });
}

class LearningPoint {
  final String id;
  final Topic topic;
  final String difficultyId;
  final String learningPoint;

  const LearningPoint({
    required this.difficultyId,
    required this.learningPoint,
    required this.id,
    required this.topic,
  });
}

class StudentLearningGoal implements IStudentLearningGoal {
  @override
  final String id;
  @override
  final String name;
  @override
  final String programName;
  @override
  final int completePercentage;

  const StudentLearningGoal({
    required this.id,
    required this.name,
    required this.programName,
    required this.completePercentage,
  });

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'programName': programName, 'completePercentage': completePercentage};
  static String emptyJsonString() => LearningGoal.empty().toJson().toString();
  bool isEmpty() => id == '';
  factory StudentLearningGoal.empty() => StudentLearningGoal(id: '', name: '', programName: '', completePercentage: 0);
}
