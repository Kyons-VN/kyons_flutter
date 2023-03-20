import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/domain/i_test_knowledge.dart';
import 'package:shared_package/shared_package.dart';

Reader<ITestKnowledge, Future<Either<ApiFailure, TestContent>>> getDiagnosticTest(String learningGoalId) {
  return Reader(
    (api) => _getDiagnosticTest(api, learningGoalId).run(),
  );
}

TaskEither<ApiFailure, TestContent> _getDiagnosticTest(ITestKnowledge api, String learningGoalId) =>
    TaskEither.tryCatch(
      () => api.getDiagnosticTest(learningGoalId),
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
