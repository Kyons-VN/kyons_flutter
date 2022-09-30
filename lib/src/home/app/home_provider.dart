import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

part 'home_provider.freezed.dart';
part 'home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final IKnowledge knowledgeApi;
  HomeNotifier(this.knowledgeApi) : super(HomeState.initial());

  Future<Unit> init() async {
    final Either<ApiFailure, List<Program>> failureOrSuccess =
        await knowledge_service.getStudentProgram().run(knowledgeApi);
    if (!mounted) return unit;
    state = HomeState.initial().copyWith(
      hasError: failureOrSuccess.isLeft(),
      studentProgramsOption: optionOf(failureOrSuccess),
    );
    return unit;
  }

  Future<Unit> initialSelection() async {
    final Either<ApiFailure, List<Subject>> failureOrSuccess = await knowledge_service.getSubjects().run(knowledgeApi);
    state = state.copyWith(
      hasError: failureOrSuccess.isLeft(),
      subjectsOption: optionOf(failureOrSuccess),
    );
    setSubjectOption(failureOrSuccess.getOrElse((l) => []).first);
    return unit;
  }

  Unit setSubjectOption(Subject subject) {
    state = state.copyWith(
      selectedSubjectOption: some(subject),
      programsOption: optionOf(subject.programs),
    );
    if (subject.programs.isEmpty) {
      state = state.copyWith(
        selectedProgramOption: none(),
      );
      return unit;
    }
    setProgramOption(subject.programs.first);
    return unit;
  }

  Unit setProgramOption(Program program) {
    state = state.copyWith(
      selectedProgramOption: some(program),
    );
    return unit;
  }

  Future<Unit> selectProgram(Program program) async {
    await knowledge_service.selectProgram(program).run(knowledgeApi);
    return unit;
  }

  Future<Unit> submit() async {
    final program = state.selectedProgramOption.getOrElse(() => Program.empty());
    await knowledge_service.selectProgram(program).run(knowledgeApi);
    return unit;
  }

  Unit start() {
    state = state.copyWith(isContinue: true);
    return unit;
  }

  Future<Unit> defaultLearningPath() async {
    await knowledge_service.defaultLearningPath(await knowledgeApi.getSelectedProgram()).run(knowledgeApi);
    AppRouter.router.go(AppPaths.learningPath.path);
    return unit;
  }
}

final homeNotifierProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(ref.read(
    knowledgeApi,
  )),
);
