part of 'tracking_provider.dart';

@freezed
class TrackingState with _$TrackingState {
  const factory TrackingState({
    required int onAppTimer,
    required Option<int> onLessonTimer,
    required Option<String> lessonId,
  }) = _TrackingState;
  factory TrackingState.initial() => TrackingState(onAppTimer: 0, onLessonTimer: none(), lessonId: none());
}
