part of 'home_provider.dart';

enum ProgramsDisplay { grid, carousel }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Either<ApiFailure, List<Subject>>> subjectsOption,
    required Option<Either<ApiFailure, List<Program>>> studentProgramsOption,
    required Option<List<Program>> programsOption,
    required Option<Subject> selectedSubjectOption,
    required Option<Program> selectedProgramOption,
    required bool hasError,
    required bool isContinue,
    required Option<Either<ApiFailure, Unit>> submitOption,
    required ProgramsDisplay display,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        subjectsOption: none(),
        studentProgramsOption: none(),
        programsOption: none(),
        selectedSubjectOption: none(),
        selectedProgramOption: none(),
        hasError: false,
        isContinue: false,
        submitOption: none(),
        display: ProgramsDisplay.grid,
      );
}
