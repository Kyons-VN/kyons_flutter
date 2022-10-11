import 'package:fpdart/fpdart.dart';

enum TrackingLessonType {
  onStudy,
  onExercise,
  onTest;

  @override
  String toString() {
    return this == TrackingLessonType.onStudy
        ? 'on_study'
        : this == TrackingLessonType.onExercise
            ? 'on_exercise'
            : 'on_test';
  }
}

abstract class ITracking {
  static const String deviceIdKey = 'device_id';
  static const String trackingKey = 'tracking';
  static const int threadhold = 10000;

  /// Generate device id and reset tracking value in localStorage
  Future<Unit> init();

  ///
  Future<Unit> trackOnApp();
  Future<Unit> trackOnLesson(String lessonId, TrackingLessonType trackingType);
  Future<Unit> resetTracking();
  Future<Unit> newTrackingOnApp();
  Future<Unit> updateTrackingOnApp(int total);
  Future<Unit> newTrackingOnLesson(String lessonId, TrackingLessonType type);
  Future<Unit> updateTrackingOnLesson(String lessonId, TrackingLessonType type, int total);
  String getDeviceId();
}
