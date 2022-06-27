import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_dto.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_dto.dart';

Reader<IKnowledge, Future<Either<ApiFailure, List<Subject>>>> getSubjects() => Reader(
      (api) => _getSubjects(api).run(),
    );

TaskEither<ApiFailure, List<Subject>> _getSubjects(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSubjects(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<Program>>>> getFrogramFromSubject(Subject subject) => Reader(
      (api) => _getPrograms(subject, api).run(),
    );

TaskEither<ApiFailure, List<Program>> _getPrograms(Subject subject, IKnowledge api) => TaskEither.tryCatch(
      () => api.getStudentProgram(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, Unit>>> defaultLearningPath() => Reader(
      (api) => _defaultLearningPath(api).run(),
    );

TaskEither<ApiFailure, Unit> _defaultLearningPath(IKnowledge api) => TaskEither.tryCatch(
      () => api.defaultLearningPath(),
      handleError,
    );

class Knowledge implements IKnowledge {
  final api = Api.init().api;

  @override
  Future<List<Program>> getStudentProgram() async {
    // final response = api.get('$serverApi/');
    return Future.value([
      Program(
        id: '1',
        name: 'Chương trình quốc gia',
        subjectId: '1',
      ),
    ]);
  }

  @override
  Future<List<Subject>> getSubjects() {
    final response = api.get('$serverApi/subjects');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<dynamic>;
      final result = data.map((json) => SubjectDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<TestContent> getDiagnosticTest() {
    final response = api.get('$serverApi/test/diagostic_test');
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<Unit> defaultLearningPath() {
    final response = api.get('$serverApi/test/skip_diagnostic_test');
    return response.then((res) {
      print(res.statusCode);
      if (res.statusCode != 200) {
        print(res.statusMessage);
        return Future.error(const ApiFailure.serverError());
      }
      return unit;
    });
  }
}
