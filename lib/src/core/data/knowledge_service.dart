import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/data/knowledge.dart';
import 'package:kyons_flutter/src/core/domain/i_knowledge.dart';

Reader<IKnowledge, Future<Either<ApiFailure, Iterable<Subject>>>> getSubjects() {
  return Reader(
    (api) => _getSubjects(api).run(),
  );
}

TaskEither<ApiFailure, Iterable<Subject>> _getSubjects(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSubjects(),
      (error, __) {
        print(error);
        if (error is ApiFailure) return error;
        return const ApiFailure.serverError();
      },
    );

Reader<IKnowledge, Future<Either<ApiFailure, Iterable<Program>>>> getFrogramFromSubject(Subject subject) {
  return Reader(
    (api) => _getPrograms(subject, api).run(),
  );
}

TaskEither<ApiFailure, Iterable<Program>> _getPrograms(Subject subject, IKnowledge api) => TaskEither.tryCatch(
      () => api.getFrogramFromSubject(subject),
      (error, __) {
        print(error);
        if (error is ApiFailure) return error;
        return const ApiFailure.serverError();
      },
    );

class Knowledge implements IKnowledge {
  final Dio api = Api.init().api;

  @override
  Future<Iterable<Program>> getFrogramFromSubject(Subject subject) async {
    // final response = api.get('$serverApi/');
    return Future.value([
      Program(
        id: '1',
        name: 'Chương trình quốc gia',
        subject: Subject(
          id: '1',
          name: 'Tiếng Anh 10',
        ),
      ),
    ]);
  }

  @override
  Future<Iterable<Subject>> getSubjects() {
    // final response = api.get('$serverApi/');
    return Future.value([
      Subject(
        id: '1',
        name: 'Tiếng Anh 10',
      ),
      Subject(
        id: '2',
        name: 'Toán 10',
      ),
    ]);
  }
}
