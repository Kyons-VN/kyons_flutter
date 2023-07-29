abstract class IStudentLearningGoal {
  /// id: string;
  // name: string;
  // programName: string;
  // subjectId: string;
  // completePercentage: number;
  // order: number;
  final String id;
  final String name;
  final String programName;
  final String subjectId;
  final int completePercentage;
  final int order;

  IStudentLearningGoal({
    required this.id,
    required this.name,
    required this.programName,
    required this.subjectId,
    required this.completePercentage,
    required this.order,
  });
}
