enum TrackingLessonType { onLesson, onExercise, onTest }

abstract class Tracking {
  static const int threadhold = 10000;
  void trackOnApp();
  void trackOnLesson(String lessonId, TrackingLessonType trackingType);
}
