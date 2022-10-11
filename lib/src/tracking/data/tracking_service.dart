import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/domain/core.dart';
import 'package:kyons_flutter/src/tracking/domain/i_tracking.dart';

/// Clear tracking value in SharedPreferences
Reader<ITracking, Future<Either<ClientFailure, Unit>>> resetTracking() => Reader(
      (api) => _resetTracking(api).run(),
    );

TaskEither<ClientFailure, Unit> _resetTracking(ITracking api) => TaskEither.tryCatch(
      () => api.resetTracking(),
      handleClientError,
    );

Reader<ITracking, Future<Either<ApiFailure, Unit>>> trackOnApp() => Reader(
      (api) => _trackOnApp(api).run(),
    );

TaskEither<ApiFailure, Unit> _trackOnApp(ITracking api) => TaskEither.tryCatch(
      () => api.trackOnApp(),
      handleError,
    );

/// Call /students/on_app api with start: true
Reader<ITracking, Future<Either<ApiFailure, Unit>>> newTrackingOnApp() => Reader(
      (api) => _newTrackingOnApp(api).run(),
    );

TaskEither<ApiFailure, Unit> _newTrackingOnApp(ITracking api) => TaskEither.tryCatch(
      () => api.newTrackingOnApp(),
      handleError,
    );

/// Call /students/on_app api without start: true
Reader<ITracking, Future<Either<ApiFailure, Unit>>> updateTrackingOnApp(int total) => Reader(
      (api) => _updateTrackingOnApp(api, total).run(),
    );

TaskEither<ApiFailure, Unit> _updateTrackingOnApp(ITracking api, int total) => TaskEither.tryCatch(
      () => api.updateTrackingOnApp(total),
      handleError,
    );

Reader<ITracking, Future<Either<ApiFailure, Unit>>> trackOnLesson(String lessonId, TrackingLessonType type) => Reader(
      (api) => _trackOnLesson(api, lessonId, type).run(),
    );

TaskEither<ApiFailure, Unit> _trackOnLesson(ITracking api, String lessonId, TrackingLessonType type) =>
    TaskEither.tryCatch(
      () => api.trackOnLesson(lessonId, type),
      handleError,
    );

/// Call /students/on_lesson api with start: true
Reader<ITracking, Future<Either<ApiFailure, Unit>>> newTrackingOnLesson(String lessonId, TrackingLessonType type) =>
    Reader(
      (api) => _newTrackingOnLesson(api, lessonId, type).run(),
    );

TaskEither<ApiFailure, Unit> _newTrackingOnLesson(ITracking api, String lessonId, TrackingLessonType type) =>
    TaskEither.tryCatch(
      () => api.newTrackingOnLesson(lessonId, type),
      handleError,
    );

/// Call /students/on_lesson api without start: true
Reader<ITracking, Future<Either<ApiFailure, Unit>>> updateTrackingOnLesson(
        String lessonId, TrackingLessonType type, int total) =>
    Reader(
      (api) => _updateTrackingOnLesson(api, lessonId, type, total).run(),
    );

TaskEither<ApiFailure, Unit> _updateTrackingOnLesson(
        ITracking api, String lessonId, TrackingLessonType type, int total) =>
    TaskEither.tryCatch(
      () => api.updateTrackingOnLesson(lessonId, type, total),
      handleError,
    );
