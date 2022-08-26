class Subject {
  final String id;
  final String name;
  final List<Program> programs;
  Subject({required this.programs, required this.id, required this.name});
  factory Subject.empty() => Subject(id: '', name: '', programs: []);
  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'programs': programs.map((p) => p.toJson())};
}

class Program {
  final String id;
  final String name;
  final String subjectId;

  Program({required this.subjectId, required this.id, required this.name});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'subjectId': subjectId,
      };

  factory Program.empty() => Program(subjectId: '', id: '', name: '');
  static String emptyJsonString() => Program.empty().toJson().toString();
  bool isEmpty() => id == '';
}

class LessonItem {
  final String id;
  final bool isNew;

  LessonItem({required this.id, this.isNew = false});
  factory LessonItem.empty() => LessonItem(id: '');
}

class LearningPath {
  final List<LessonItem> lessons;

  LearningPath(this.lessons);
  int get length => lessons.length;
  void push(Iterable<LessonItem> lessonsList) => lessons.addAll(lessonsList);
  factory LearningPath.empty() => LearningPath([]);

  LessonItem getLessonAt(int index) => lessons[index];
}

class Category {
  final String id;
  final String name;

  Category({required this.id, required this.name});
  factory Category.empty() => Category(id: '', name: '');
}

class Topic {
  final String id;
  final String name;

  Topic({required this.id, required this.name});
  factory Topic.empty() => Topic(id: '', name: '');
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

  LessonInfo({required this.category, required this.topic, required this.lessons});
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

  Lesson({
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
  final String diffucultyId;
  final String learningPoint;

  LearningPoint({
    required this.diffucultyId,
    required this.learningPoint,
    required this.id,
    required this.topic,
  });
}
