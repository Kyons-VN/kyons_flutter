import '../domain/i_test_knowledge.dart';
import '../domain/i_test_template.dart';

class TestTemplate implements ITestTemplate {
  @override
  final String id;

  @override
  final String name;

  TestTemplate({
    required this.id,
    required this.name,
  });
}

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
