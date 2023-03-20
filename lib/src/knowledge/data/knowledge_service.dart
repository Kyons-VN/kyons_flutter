import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:shared_package/shared_package.dart';

const String selectedProgramKey = 'selectedProgram';
const String selectedLearningGoalKey = 'selectedLearningGoal';
const String selectedCatIndexKey = 'selectedCatIndex';

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

Reader<IKnowledge, Future<Either<ApiFailure, LearningGoalPath>>> getLearningGoalPath(
        Program program, LearningGoal learningGoal) =>
    Reader(
      (api) => _getLearningGoalPath(api, program, learningGoal).run(),
    );
TaskEither<ApiFailure, LearningGoalPath> _getLearningGoalPath(
        IKnowledge api, Program program, LearningGoal learningGoal) =>
    TaskEither.tryCatch(
      () => api.getLearningGoalPath(program, learningGoal),
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

Reader<IKnowledge, Future<Either<ClientFailure, Unit>>> selectLearningGoal(LearningGoal learningGoal) => Reader(
      (api) => _selectLearningGoal(api, learningGoal).run(),
    );
TaskEither<ClientFailure, Unit> _selectLearningGoal(IKnowledge api, LearningGoal learningGoal) => TaskEither.tryCatch(
      () => api.selectLearningGoal(learningGoal),
      handleClientError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, Program>>> getSelectedProgram() => Reader(
      (api) => _getSelectedProgram(api).run(),
    );
TaskEither<ClientFailure, Program> _getSelectedProgram(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSelectedProgram(),
      handleClientError,
    );

/// Clear selectedProgram value in SharedPreferences
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

Reader<IKnowledge, Future<Either<ApiFailure, Unit>>> createLesson(Program program, List<String> difficultyList) =>
    Reader(
      (api) => _createLesson(api, program, difficultyList).run(),
    );
TaskEither<ApiFailure, Unit> _createLesson(IKnowledge api, Program program, List<String> difficultyList) =>
    TaskEither.tryCatch(
      () => api.createLesson(program, difficultyList),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<LearningGoal>>>> getLearningGoals(Program program) => Reader(
      (api) => _getLearningGoals(api, program).run(),
    );
TaskEither<ApiFailure, List<LearningGoal>> _getLearningGoals(IKnowledge api, Program program) => TaskEither.tryCatch(
      () => api.getLearningGoals(program),
      handleError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, LearningGoal>>> getSelectedLearningGoal() => Reader(
      (api) => _getSelectedLearningGoal(api).run(),
    );
TaskEither<ClientFailure, LearningGoal> _getSelectedLearningGoal(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSelectedLearningGoal(),
      handleClientError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, List<TopicSelection>>>> getTopicsFromLearningGoal(
        LearningGoal learningGoal) =>
    Reader(
      (api) => _getTopics(api, learningGoal).run(),
    );
TaskEither<ApiFailure, List<TopicSelection>> _getTopics(IKnowledge api, LearningGoal learningGoal) =>
    TaskEither.tryCatch(
      () => api.getTopicsFromLearningGoal(learningGoal),
      handleError,
    );

Reader<IKnowledge, Future<Either<ApiFailure, LearningGoal>>> createLearningGoal(
        LearningGoal masterLearningGoal, List<TopicSelection> selectedTopics) =>
    Reader(
      (api) => _createLearningGoal(api, masterLearningGoal, selectedTopics).run(),
    );
TaskEither<ApiFailure, LearningGoal> _createLearningGoal(
        IKnowledge api, LearningGoal masterLearningGoal, List<TopicSelection> selectedTopics) =>
    TaskEither.tryCatch(
      () => api.createLearningGoal(masterLearningGoal, selectedTopics),
      handleError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, int>>> getSelectedCatIndex() => Reader(
      (api) => _getSelectedCatIndex(api).run(),
    );
TaskEither<ClientFailure, int> _getSelectedCatIndex(IKnowledge api) => TaskEither.tryCatch(
      () => api.getSelectedCatIndex(),
      handleClientError,
    );

Reader<IKnowledge, Future<Either<ClientFailure, Unit>>> setSelectedCatIndex(int index) => Reader(
      (api) => _setSelectedCatIndex(api, index).run(),
    );
TaskEither<ClientFailure, Unit> _setSelectedCatIndex(IKnowledge api, int index) => TaskEither.tryCatch(
      () => api.setSelectedCatIndex(index),
      handleClientError,
    );
