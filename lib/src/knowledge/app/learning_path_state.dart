part of 'learning_path_provider.dart';

@freezed
class LearningPathState with _$LearningPathState {
  const factory LearningPathState({
    required bool loading,
    required Option<LearningPath> learningPath,
    required bool missingProgram,
    required Option<ApiFailure> error,
  }) = _LearningPathState;
  factory LearningPathState.initial() => LearningPathState(
        loading: false,
        learningPath: none(),
        missingProgram: false,
        error: none(),
      );
  factory LearningPathState.loading() => LearningPathState(
        loading: true,
        learningPath: none(),
        missingProgram: false,
        error: none(),
      );
  factory LearningPathState.loaded(LearningPath learningPath) => LearningPathState(
        loading: false,
        learningPath: some(learningPath),
        missingProgram: false,
        error: none(),
      );
  factory LearningPathState.error(ApiFailure error) => LearningPathState(
        loading: false,
        learningPath: none(),
        missingProgram: false,
        error: some(error),
      );
  factory LearningPathState.missingProgram(ClientFailure error) => LearningPathState(
        loading: false,
        learningPath: none(),
        missingProgram: true,
        error: none(),
      );
}
