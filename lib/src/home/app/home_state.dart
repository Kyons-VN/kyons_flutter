part of 'home_provider.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Either<ApiFailure, List<Program>>> studentProgramsOption,
    required bool hasError,
    required ProgramsDisplay display,
    required int carouselIndex,
    required int previousIndex,
    required Option<LearningGoal> selectedLearningGoalOption,
  }) = _HomeState;

//   factory HomeState.initial() => HomeState(
//         // subjectsOption: none(),
//         studentProgramsOption: none(),
//         // programsOption: none(),
//         // selectedSubjectOption: none(),
//         // selectedProgramOption: none(),
//         hasError: false,
//         // isContinue: false,
//         // submitOption: none(),
//         // display: ProgramsDisplay.grid,
//       );
}
