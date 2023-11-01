import '../../test_knowledge/data/test_entities.dart';
import '../domain/i_learning_goal.dart';

class Subject {
  final String id;
  final String name;
  final String label;
  final List<Program> programs;
  Subject({required this.label, required this.programs, required this.id, required this.name});
  factory Subject.empty() => Subject(id: '', name: '', programs: [], label: '');
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'programs': programs.map((p) => p.toJson())};
}

class Program {
  final String id;
  final String name;
  final String subjectId;
  final LearningGoal? learningGoal;

  Program({required this.subjectId, required this.id, required this.name, this.learningGoal});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'subjectId': subjectId,
        'learningGoal': learningGoal?.toJson() ?? '',
      };

  factory Program.empty() => Program(subjectId: '', id: '', name: '');
  static String emptyJsonString() => Program.empty().toJson().toString();
  bool isEmpty() => id == '';
}

class LearningGoal {
  final String id;
  final String name;
  final double progress;
  final int maxTopics;
  final int minTopics;
  final List<TestTemplate> templates;

  const LearningGoal({
    required this.templates,
    required this.id,
    required this.name,
    required this.progress,
    this.maxTopics = 99,
    this.minTopics = 0,
  });
  factory LearningGoal.empty() =>
      const LearningGoal(id: '', name: '', progress: 0.0, maxTopics: 99, minTopics: 0, templates: []);
  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'progress': progress, 'maxTopic': maxTopics, 'minTopic': minTopics};
  static String emptyJsonString() => LearningGoal.empty().toJson().toString();
  bool isEmpty() => id == '';
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

  TopicSelection({required String id, required String name, this.isSelected = false}) : super(id: id, name: name);
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
  // @override
  // final String subjectId;
  @override
  final int completePercentage;
  // @override
  // final int order;

  StudentLearningGoal({
    required this.id,
    required this.name,
    required this.programName,
    // required this.subjectId,
    required this.completePercentage,
    // required this.order,
  });

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'programName': programName, 'completePercentage': completePercentage};
  static String emptyJsonString() => LearningGoal.empty().toJson().toString();
  bool isEmpty() => id == '';
  factory StudentLearningGoal.empty() => StudentLearningGoal(id: '', name: '', programName: '', completePercentage: 0);
}
