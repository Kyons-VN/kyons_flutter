import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart';
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

Reader<ITestKnowledge, Future<Either<ApiFailure, Unit>>> submit(TestContent testContent) {
  return Reader(
    (api) => _submit(api, testContent).run(),
  );
}

TaskEither<ApiFailure, Unit> _submit(ITestKnowledge api, TestContent testContent) => TaskEither.tryCatch(
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
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<Unit> submit(TestContent testContent) {
    final studentId = getCurrentUserId();
    final response = api.post('$serverApi/submit/answers', data: {
      'student_id': studentId,
      'test_id': testContent.id,
      'start_time': testContent.startedAt.millisecondsSinceEpoch,
      'end_time': testContent.endedAt.millisecondsSinceEpoch,
      'submission': testContent.submission,
    });

    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }
}
