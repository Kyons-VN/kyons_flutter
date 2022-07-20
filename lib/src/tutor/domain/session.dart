enum SessionStatus {
  empty,
  processing,
  created,
}

class TutorSessionStatus {
  final SessionStatus status;
  final String? meetUrl;

  TutorSessionStatus({required this.status, this.meetUrl});
  factory TutorSessionStatus.empty() => TutorSessionStatus(status: SessionStatus.empty, meetUrl: '');
}
