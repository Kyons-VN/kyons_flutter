import 'package:fpdart/fpdart.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/data/api.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/domain/i_knowledge.dart';

const String mockProgramKey = 'mockProgram';
const String selectedProgramKey = 'selectedProgram';
const String mockLearningGoalKey = 'mockLearningGoal';
const String selectedLearningGoalKey = 'selectedLearningGoal';
const String selectedCatIndexKey = 'selectedCatIndex';

Reader<IKnowledgeApi, Future<Either<ApiFailure, List<Subject>>>> getSubjects() => Reader(
      (api) => _getSubjects(api).run(),
    );
TaskEither<ApiFailure, List<Subject>> _getSubjects(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getSubjects(),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, List<Program>>>> getFrogramFromSubject(Subject subject) => Reader(
      (api) => _getPrograms(subject, api).run(),
    );
TaskEither<ApiFailure, List<Program>> _getPrograms(Subject subject, IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getStudentProgram(),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, Unit>>> defaultLearningPath(Program program) => Reader(
      (api) => _defaultLearningPath(api, program).run(),
    );
TaskEither<ApiFailure, Unit> _defaultLearningPath(IKnowledgeApi api, Program program) => TaskEither.tryCatch(
      () => api.defaultLearningPath(program),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, LearningGoalPath>>> getLearningGoalPath(
        Program program, LearningGoal learningGoal) =>
    Reader(
      (api) => _getLearningGoalPath(api, program, learningGoal).run(),
    );
TaskEither<ApiFailure, LearningGoalPath> _getLearningGoalPath(
        IKnowledgeApi api, Program program, LearningGoal learningGoal) =>
    TaskEither.tryCatch(
      () => api.getLearningGoalPath(program, learningGoal),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, LessonGroup>>> getLessonGroup(String lessonGroupId) => Reader(
      (api) => _getLessonGroup(api, lessonGroupId).run(),
    );
TaskEither<ApiFailure, LessonGroup> _getLessonGroup(IKnowledgeApi api, String lessonGroupId) => TaskEither.tryCatch(
      () => api.getLessonGroup(lessonGroupId),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, List<Program>>>> getStudentProgram() => Reader(
      (api) => _getStudentProgram(api).run(),
    );
TaskEither<ApiFailure, List<Program>> _getStudentProgram(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getStudentProgram(),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, Unit>>> selectMockProgram(Program program) => Reader(
      (api) => _selectMockProgram(api, program).run(),
    );
TaskEither<ClientFailure, Unit> _selectMockProgram(IKnowledgeApi api, Program program) => TaskEither.tryCatch(
      () => api.selectMockProgram(program),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, Unit>>> setProgram(Program program) => Reader(
      (api) => _setProgram(api, program).run(),
    );
TaskEither<ClientFailure, Unit> _setProgram(IKnowledgeApi api, Program program) => TaskEither.tryCatch(
      () => api.setProgram(program),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, Unit>>> setLearningGoal(LearningGoal learningGoal) => Reader(
      (api) => _setLearningGoal(api, learningGoal).run(),
    );
TaskEither<ClientFailure, Unit> _setLearningGoal(IKnowledgeApi api, LearningGoal learningGoal) => TaskEither.tryCatch(
      () => api.setLearningGoal(learningGoal),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, Unit>>> selectMockLearningGoal(LearningGoal learningGoal) => Reader(
      (api) => _selectMockLearningGoal(api, learningGoal).run(),
    );
TaskEither<ClientFailure, Unit> _selectMockLearningGoal(IKnowledgeApi api, LearningGoal learningGoal) =>
    TaskEither.tryCatch(
      () => api.selectMockLearningGoal(learningGoal),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, Program>>> getSelectedProgram() => Reader(
      (api) => _getSelectedProgram(api).run(),
    );
TaskEither<ClientFailure, Program> _getSelectedProgram(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getSelectedProgram(),
      handleClientError,
    );

/// Clear selectedProgram value in SharedPreferences
Reader<IKnowledgeApi, Future<Either<ClientFailure, Unit>>> removeSelectedProgram() => Reader(
      (api) => _removeSelectedProgram(api).run(),
    );
TaskEither<ClientFailure, Unit> _removeSelectedProgram(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.removeSelectedProgram(),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, List<LearningPoint>>>> getLearningPoints(Program program) => Reader(
      (api) => _getLearningPoints(api, program).run(),
    );
TaskEither<ApiFailure, List<LearningPoint>> _getLearningPoints(IKnowledgeApi api, Program program) =>
    TaskEither.tryCatch(
      () => api.getLearningPoints(program),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, Unit>>> createLesson(Program program, List<String> difficultyList) =>
    Reader(
      (api) => _createLesson(api, program, difficultyList).run(),
    );
TaskEither<ApiFailure, Unit> _createLesson(IKnowledgeApi api, Program program, List<String> difficultyList) =>
    TaskEither.tryCatch(
      () => api.createLesson(program, difficultyList),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, List<LearningGoal>>>> getLearningGoals(Program program) => Reader(
      (api) => _getLearningGoals(api, program).run(),
    );
TaskEither<ApiFailure, List<LearningGoal>> _getLearningGoals(IKnowledgeApi api, Program program) => TaskEither.tryCatch(
      () => api.getLearningGoals(program),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, LearningGoal>>> getMockLearningGoal() => Reader(
      (api) => _getMockLearningGoal(api).run(),
    );
TaskEither<ClientFailure, LearningGoal> _getMockLearningGoal(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getMockLearningGoal(),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, LearningGoal>>> getSelectedLearningGoal() => Reader(
      (api) => _getSelectedLearningGoal(api).run(),
    );
TaskEither<ClientFailure, LearningGoal> _getSelectedLearningGoal(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getSelectedLearningGoal(),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, List<TopicSelection>>>> getTopicsFromLearningGoal(
        LearningGoal learningGoal) =>
    Reader(
      (api) => _getTopics(api, learningGoal).run(),
    );
TaskEither<ApiFailure, List<TopicSelection>> _getTopics(IKnowledgeApi api, LearningGoal learningGoal) =>
    TaskEither.tryCatch(
      () => api.getTopicsFromLearningGoal(learningGoal),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ApiFailure, LearningGoal>>> createLearningGoal(
        LearningGoal masterLearningGoal, List<TopicSelection> selectedTopics) =>
    Reader(
      (api) => _createLearningGoal(api, masterLearningGoal, selectedTopics).run(),
    );
TaskEither<ApiFailure, LearningGoal> _createLearningGoal(
        IKnowledgeApi api, LearningGoal masterLearningGoal, List<TopicSelection> selectedTopics) =>
    TaskEither.tryCatch(
      () => api.createLearningGoal(masterLearningGoal, selectedTopics),
      handleError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, int>>> getSelectedCatIndex() => Reader(
      (api) => _getSelectedCatIndex(api).run(),
    );
TaskEither<ClientFailure, int> _getSelectedCatIndex(IKnowledgeApi api) => TaskEither.tryCatch(
      () => api.getSelectedCatIndex(),
      handleClientError,
    );

Reader<IKnowledgeApi, Future<Either<ClientFailure, Unit>>> setSelectedCatIndex(int index) => Reader(
      (api) => _setSelectedCatIndex(api, index).run(),
    );
TaskEither<ClientFailure, Unit> _setSelectedCatIndex(IKnowledgeApi api, int index) => TaskEither.tryCatch(
      () => api.setSelectedCatIndex(index),
      handleClientError,
    );
