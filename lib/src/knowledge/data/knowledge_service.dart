import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';

const String selectedProgramKey = 'selectedProgram';

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

Reader<IKnowledge, Future<Either<ApiFailure, Unit>>> defaultLearningPath(Program program) => Reader(
      (api) => _defaultLearningPath(api, program).run(),
    );

TaskEither<ApiFailure, Unit> _defaultLearningPath(IKnowledge api, Program program) => TaskEither.tryCatch(
      () => api.defaultLearningPath(program),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, LearningPath>>> getLearningPath(Program program) => Reader(
      (api) => _getLearningPath(api, program).run(),
    );

TaskEither<ApiFailure, LearningPath> _getLearningPath(IKnowledge api, Program program) => TaskEither.tryCatch(
      () => api.getLearningPath(program),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, LessonGroup>>> getLessonGroup(String lessonGroupId) => Reader(
      (api) => _getLessonGroup(api, lessonGroupId).run(),
    );

TaskEither<ApiFailure, LessonGroup> _getLessonGroup(IKnowledge api, String lessonGroupId) => TaskEither.tryCatch(
      () => api.getLessonGroup(lessonGroupId),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<Program>>>> getStudentProgram() => Reader(
      (api) => _getStudentProgram(api).run(),
    );

TaskEither<ApiFailure, List<Program>> _getStudentProgram(IKnowledge api) => TaskEither.tryCatch(
      () => api.getStudentProgram(),
      handleError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, Unit>>> selectProgram(Program program) => Reader(
      (api) => _selectProgram(api, program).run(),
    );

TaskEither<ClientFailure, Unit> _selectProgram(IKnowledge api, Program program) => TaskEither.tryCatch(
      () => api.selectProgram(program),
      handleClientError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, Program>>> getSelectedProgram() => Reader(
      (api) => _getSelectedProgram(api).run(),
    );

TaskEither<ClientFailure, Program> _getSelectedProgram(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSelectedProgram(),
      handleClientError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, Unit>>> removeSelectedProgram() => Reader(
      (api) => _removeSelectedProgram(api).run(),
    );

TaskEither<ClientFailure, Unit> _removeSelectedProgram(IKnowledge api) => TaskEither.tryCatch(
      () => api.removeSelectedProgram(),
      handleClientError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<LearningPoint>>>> getLearningPoints(Program program) => Reader(
      (api) => _getLearningPoints(api, program).run(),
    );

TaskEither<ApiFailure, List<LearningPoint>> _getLearningPoints(IKnowledge api, Program program) => TaskEither.tryCatch(
      () => api.getLearningPoints(program),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, Unit>>> createLesson(List<String> difficultyList) => Reader(
      (api) => _createLesson(api, difficultyList).run(),
    );

TaskEither<ApiFailure, Unit> _createLesson(IKnowledge api, List<String> difficultyList) => TaskEither.tryCatch(
      () => api.createLesson(difficultyList),
      handleError,
    );
