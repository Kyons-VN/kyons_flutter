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
