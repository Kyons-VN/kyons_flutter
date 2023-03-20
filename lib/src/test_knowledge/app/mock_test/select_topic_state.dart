part of 'select_topic_controller.dart';

@freezed
class SelectTopicState with _$SelectTopicState {
  const factory SelectTopicState({
    required bool isLoading,
    required bool isTouched,
    required bool isValid,
    required Option<List<TopicSelection>> topicsOption,
    required List<TopicSelection> selectedTopics,
    required Option<LearningGoal> newLearningGoal,
    required Option<ApiFailure> apiError,
    required Option<ClientFailure> clientError,
  }) = _SelectTopicState;
  factory SelectTopicState.initial() => SelectTopicState(
        isLoading: false,
        isTouched: false,
        isValid: true,
        topicsOption: none(),
        selectedTopics: [],
        newLearningGoal: none(),
        apiError: none(),
        clientError: none(),
      );
}
