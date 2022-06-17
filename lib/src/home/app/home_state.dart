part of 'home_provider.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Either<ApiFailure, Iterable<Subject>>> subjectOption,
    required Option<Program> programOption,
    required bool isSelectingSubject,
    required bool hasError,
    required Option<Either<ApiFailure, Unit>> submitOption,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        subjectOption: none(),
        programOption: none(),
        isSelectingSubject: false,
        hasError: false,
        submitOption: none(),
      );
}
