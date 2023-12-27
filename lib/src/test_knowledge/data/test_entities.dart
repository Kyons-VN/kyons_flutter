import '../domain/i_test_knowledge.dart';

class MockTestItem implements IMockTestItem {
  @override
  final String id;
  @override
  final DateTime createdDate;
  @override
  final MockTestStatus status;
  @override
  final double? score;
  @override
  final int? index;

  MockTestItem({required this.id, required this.createdDate, required this.status, this.score = 0, this.index = 0});
}
