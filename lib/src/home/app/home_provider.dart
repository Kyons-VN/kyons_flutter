import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;

part 'home_provider.freezed.dart';
part 'home_provider.g.dart';
part 'home_state.dart';

enum ProgramsDisplay { grid, carousel }

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  Future<HomeState> build() async {
    final Either<ApiFailure, List<Program>> failureOrSuccess =
        await knowledge_service.getStudentProgram().run(ref.read(knowledgeApiProvider));
    final prefs = await SharedPreferences.getInstance();
    final currentDisplay = prefs.getString('display') == 'carousel' ? ProgramsDisplay.carousel : ProgramsDisplay.grid;
    return HomeState(
      studentProgramsOption: optionOf(failureOrSuccess),
      hasError: failureOrSuccess.isLeft(),
      display: currentDisplay,
      carouselIndex: 1,
      previousIndex: 1,
      selectedLearningGoalOption: none(),
    );
    //   return unit;
  }

  Future<Unit> toggleDisplay() async {
    ProgramsDisplay display;
    switch (state.value!.display) {
      case ProgramsDisplay.carousel:
        display = ProgramsDisplay.grid;
        break;
      case ProgramsDisplay.grid:
        display = ProgramsDisplay.carousel;
        break;
    }
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('display', display == ProgramsDisplay.carousel ? 'carousel' : 'grid');
    state = AsyncValue.data(state.value!.copyWith(display: display, previousIndex: state.value!.carouselIndex));
    return unit;
  }
  // final IKnowledge knowledgeApi;
  // HomeNotifier(this.knowledgeApi) : super(HomeState.initial());

  // Future<Unit> init() async {
  //   final Either<ApiFailure, List<Program>> failureOrSuccess =
  //       await knowledge_service.getStudentProgram().run(knowledgeApi);
  //   if (!mounted) return unit;
  //   state = HomeState.initial().copyWith(
  //     hasError: failureOrSuccess.isLeft(),
  //     studentProgramsOption: optionOf(failureOrSuccess),
  //   );
  //   return unit;
  // }

  // Future<Unit> initialSelection() async {
  //   final Either<ApiFailure, List<Subject>> failureOrSuccess = await knowledge_service.getSubjects().run(knowledgeApi);
  //   state = state.copyWith(
  //     hasError: failureOrSuccess.isLeft(),
  //     subjectsOption: optionOf(failureOrSuccess),
  //   );
  //   setSubjectOption(failureOrSuccess.getOrElse((l) => []).first);
  //   return unit;
  // }

  // Unit setSubjectOption(Subject subject) {
  //   state = state.copyWith(
  //     selectedSubjectOption: some(subject),
  //     programsOption: optionOf(subject.programs),
  //   );
  //   if (subject.programs.isEmpty) {
  //     state = state.copyWith(
  //       selectedProgramOption: none(),
  //     );
  //     return unit;
  //   }
  //   setProgramOption(subject.programs.first);
  //   return unit;
  // }

  // Unit setProgramOption(Program program) {
  //   state = state.copyWith(
  //     selectedProgramOption: some(program),
  //   );
  //   return unit;
  // }

  Future<Unit> selectProgram(Program program) async {
    await knowledge_service.setProgram(program).run(ref.read(knowledgeApiProvider));
    if (program.learningGoal != null) {
      await knowledge_service.setLearningGoal(program.learningGoal!).run(ref.read(knowledgeApiProvider));
    }
    state = AsyncData(state.value!.copyWith(selectedLearningGoalOption: optionOf(program.learningGoal)));
    return unit;
  }

  // Future<Unit> submit() async {
  //   final program = state.selectedProgramOption.getOrElse(() => Program.empty());
  //   await knowledge_service.selectProgram(program).run(knowledgeApi);
  //   return unit;
  // }

  // Unit start() {
  //   state = state.copyWith(isContinue: true);
  //   return unit;
  // }

  // Future<Unit> defaultLearningPath() async {
  //   await knowledge_service.defaultLearningPath(await knowledgeApi.getSelectedProgram()).run(knowledgeApi);
  //   AppRouter.router.go(AppPaths.learningPath.path);
  //   return unit;
  // }

  Unit setCarouselIndex(int previousIndexnt, int index) {
    state = AsyncData(state.value!.copyWith(previousIndex: previousIndexnt, carouselIndex: index));
    return unit;
  }
}

// final homeNotifierProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
//   (ref) => HomeNotifier(ref.read(
//     knowledgeApi,
//   )),
// );
