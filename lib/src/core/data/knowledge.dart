class Subject {
  final String id;
  final String name;

  Subject({required this.id, required this.name});
}

class Program {
  final String id;
  final String name;
  final Subject subject;

  Program({required this.subject, required this.id, required this.name});
}
