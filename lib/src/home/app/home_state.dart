part of 'home_provider.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Either<ApiFailure, List<Subject>>> subjectsOption,
    required Option<List<Program>> programsOption,
    required Option<Subject> selectedSubjectOption,
    required Option<Program> selectedProgramOption,
    required bool hasError,
    required bool isContinue,
    required Option<Either<ApiFailure, Unit>> submitOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        subjectsOption: none(),
        programsOption: none(),
        selectedSubjectOption: none(),
        selectedProgramOption: none(),
        hasError: false,
        isContinue: false,
        submitOption: none(),
      );
}
