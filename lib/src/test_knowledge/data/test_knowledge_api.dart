import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_dto.dart';
import 'package:kyons_flutter/src/test_knowledge/domain/i_test_knowledge.dart';

class TestKnowledge implements ITestKnowledge {
  final api = Api.init().api;

  @override
  Future<TestContent> getDiagnosticTest(Program program) {
    final params = {
      'program_id': program.id,
    };
    final response = api.get('$serverApi/test/diagnostic_test?program_id=${program.id}');

    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;

      data['done'] = data['done'] ?? false;
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<TestResult> submit(TestContent testContent) {
    final response = api.post('$serverApi/submit_answers', data: {
      'test_id': testContent.id,
      'start_time': testContent.startedAt.serverRequest,
      'end_time': testContent.endedAt.serverRequest,
      'submission': testContent.submission,
    });

    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      return TestResultDto.fromJson(data).toDomain();
    });
  }

  @override
  Future<TestContent> getExercise(String lessonGroupId) {
    final response = api.get('$serverApi/test/get_lesson_exercise', queryParameters: {'lesson_id': lessonGroupId});

    return response
        .then(handleResponseError)
        .then((data) async => TestContentDto.fromJson(data as Map<String, dynamic>).toDomain());
  }

  @override
  Future<TestContent> getTest(String lessonGroupId) {
    final response = api.get('$serverApi/test/get_lesson_test', queryParameters: {'lesson_id': lessonGroupId});

    return response
        .then(handleResponseError)
        .then((data) async => TestContentDto.fromJson(data as Map<String, dynamic>).toDomain());
  }

  @override
  Future<TestResult> getTestResult(String lessonGroupId) {
    final response = api.get('$serverApi/test/result', queryParameters: {'lesson_id': lessonGroupId});

    return response
        .then(handleResponseError)
        .then((data) async => TestResultDto.fromJson(data as Map<String, dynamic>).toDomain());
  }
}
