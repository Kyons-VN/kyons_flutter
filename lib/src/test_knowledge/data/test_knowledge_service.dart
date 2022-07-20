import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_dto.dart';
import 'package:kyons_flutter/src/test_knowledge/domain/i_test_knowledge.dart';

Reader<ITestKnowledge, Future<Either<ApiFailure, TestContent>>> getDiagnosticTest() {
  return Reader(
    (api) => _getDiagnosticTest(api).run(),
  );
}

TaskEither<ApiFailure, TestContent> _getDiagnosticTest(ITestKnowledge api) => TaskEither.tryCatch(
      () => api.getDiagnosticTest(),
      handleError,
    );

Reader<ITestKnowledge, Future<Either<ApiFailure, TestContent>>> getExercise(String lessonGroupId) {
  return Reader(
    (api) => _getExercise(api, lessonGroupId).run(),
  );
}

TaskEither<ApiFailure, TestContent> _getExercise(ITestKnowledge api, String lessonGroupId) => TaskEither.tryCatch(
      () => api.getExercise(lessonGroupId),
      handleError,
    );

Reader<ITestKnowledge, Future<Either<ApiFailure, TestContent>>> getTest(String lessonGroupId) {
  return Reader(
    (api) => _getTest(api, lessonGroupId).run(),
  );
}

TaskEither<ApiFailure, TestContent> _getTest(ITestKnowledge api, String lessonGroupId) => TaskEither.tryCatch(
      () => api.getTest(lessonGroupId),
      handleError,
    );

Reader<ITestKnowledge, Future<Either<ApiFailure, TestResult>>> submit(TestContent testContent) {
  return Reader(
    (api) => _submit(api, testContent).run(),
  );
}

TaskEither<ApiFailure, TestResult> _submit(ITestKnowledge api, TestContent testContent) => TaskEither.tryCatch(
      () => api.submit(testContent),
      handleError,
    );

class TestKnowledge implements ITestKnowledge {
  final api = Api.init().api;

  @override
  Future<TestContent> getDiagnosticTest() {
    final response = api.get('$serverApi/test/diagnostic_test');

    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;

      data['done'] = data['done'] ?? false;
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<TestResult> submit(TestContent testContent) {
    // final studentId = getCurrentUserId();
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
}
