import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
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

Reader<ITestKnowledge, Future<Either<ApiFailure, TestResult>>> getTestResult(String lessonGroupId) {
  return Reader(
    (api) => _getTestResult(api, lessonGroupId).run(),
  );
}

TaskEither<ApiFailure, TestResult> _getTestResult(ITestKnowledge api, String lessonGroupId) => TaskEither.tryCatch(
      () => api.getTestResult(lessonGroupId),
      handleError,
    );
