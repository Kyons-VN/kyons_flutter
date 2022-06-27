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
}
