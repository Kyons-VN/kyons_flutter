import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

part 'home_provider.freezed.dart';
part 'home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final IKnowledge knowledgeApi;
  HomeNotifier(this.knowledgeApi) : super(HomeState.initial());

  Future<void> init() async {
    final Either<ApiFailure, List<Program>> failureOrSuccess =
        await knowledge_service.getStudentProgram().run(knowledgeApi);
    state = HomeState.initial().copyWith(
      hasError: failureOrSuccess.isLeft(),
      studentProgramsOption: optionOf(failureOrSuccess),
    );
  }

  Future<void> initialSelection() async {
    final Either<ApiFailure, List<Subject>> failureOrSuccess = await knowledge_service.getSubjects().run(knowledgeApi);
    state = state.copyWith(
      hasError: failureOrSuccess.isLeft(),
      subjectsOption: optionOf(failureOrSuccess),
    );
    setSelectedSubject(failureOrSuccess.getOrElse((l) => []).first);
  }

  setSelectedSubject(Subject subject) {
    state = state.copyWith(
      selectedSubjectOption: some(subject),
      programsOption: optionOf(subject.programs),
    );
    setSelectedProgram(subject.programs.first);
  }

  setSelectedProgram(Program program) {
    state = state.copyWith(
      selectedProgramOption: some(program),
    );
  }

  start() {
    state = state.copyWith(isContinue: true);
  }

  defaultLearningPath() async {
    await knowledge_service.defaultLearningPath().run(knowledgeApi);
    AppRouter.router.go(AppPaths.learningPath.path);
  }
}

final homeNotifierProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(ref.read(
    knowledge,
  )),
);
