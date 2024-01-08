import '../../core/data/api.dart';
import '../../test_knowledge/data/test_knowledge.dart';
import '../../test_knowledge/data/test_knowledge_dto.dart';
import '../../test_knowledge/domain/i_test_knowledge.dart';

class TestKnowledge implements ITestKnowledge {
  final Api apiService;
  final String hostName;

  TestKnowledge({required this.apiService, required this.hostName});

  @override
  Future<TestContent> getDiagnosticTest(String learningGoalId) {
    final params = {
      'learning_goal_id': learningGoalId,
    };
    final response = apiService.api.get('$hostName/test/learning_goal_test', queryParameters: params);

    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;

      data['done'] = data['done'] ?? false;
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<TestResult> submit(TestContent testContent) {
    final params = {
      'test_id': testContent.id,
      'start_time': testContent.startedAt.serverRequest,
      'end_time': testContent.endedAt.serverRequest,
      'submission': testContent.submission,
    };
    final response = apiService.api.post('/submit_answers', data: params);

    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      return TestResultDto.fromJson(data).toDomain();
    });
  }

  @override
  Future<TestContent> getExercise(String lessonGroupId) {
    final response =
        apiService.api.get('$hostName/test/get_lesson_exercise', queryParameters: {'lesson_id': lessonGroupId});

    return response
        .then(handleResponseError)
        .then((data) async => TestContentDto.fromJson(data as Map<String, dynamic>).toDomain());
  }

  @override
  Future<TestContent> getTest(String lessonGroupId) {
    final response =
        apiService.api.get('$hostName/test/get_lesson_test', queryParameters: {'lesson_id': lessonGroupId});

    return response
        .then(handleResponseError)
        .then((data) async => TestContentDto.fromJson(data as Map<String, dynamic>).toDomain());
  }

  @override
  Future<TestResult> getTestResult(String lessonGroupId) {
    final response = apiService.api.get('$hostName/test/result', queryParameters: {'lesson_id': lessonGroupId});

    return response
        .then(handleResponseError)
        .then((data) async => TestResultDto.fromJson(data as Map<String, dynamic>).toDomain());
  }
}
