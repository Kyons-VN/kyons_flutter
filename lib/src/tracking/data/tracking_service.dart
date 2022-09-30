import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/tracking/domain/tracking.dart';

class TrackingApi extends Tracking {
  final api = Api.init();
  @override
  void trackOnApp() {}

  @override
  void trackOnLesson(String lessonId, TrackingLessonType trackingType) {
    // TODO: implement trackOnLesson
  }
}
