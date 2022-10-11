import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/tracking/data/tracking_service.dart' as tracking_service;
import 'package:kyons_flutter/src/tracking/domain/i_tracking.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class TrackingApi extends ITracking {
  late String _deviceId;
  TrackingApi._();

  factory TrackingApi.init() => TrackingApi._();
  final api = Api.init().api;

  @override
  Future<Unit> trackOnApp() async {
    final tracking = await _getTracking();
    final total = tracking['total'];
    if (total == null) {
      return tracking_service.newTrackingOnApp().run(this).then((_) => unit);
    } else {
      final updateTotal = total + ITracking.threadhold / 1000;
      return tracking_service.updateTrackingOnApp(updateTotal.round()).run(this).then((_) => unit);
    }
  }

  @override
  Future<Unit> trackOnLesson(String lessonId, TrackingLessonType trackingType) async {
    // final tracking = await _getTracking();
    final lessonTracking = await _getLessonTracking(lessonId);
    final total = lessonTracking[trackingType.toString()];
    if (lessonTracking.keys.length == 0 || total == null) {
      return tracking_service.newTrackingOnLesson(lessonId, trackingType).run(this).then((_) => unit);
    } else {
      final updateTotal = total + ITracking.threadhold / 1000;
      return tracking_service
          .updateTrackingOnLesson(lessonId, trackingType, updateTotal.round())
          .run(this)
          .then((_) => unit);
    }
  }

  @override
  String getDeviceId() {
    return _deviceId;
  }

  @override
  Future<Unit> init() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    final deviceId = prefs.getString(ITracking.deviceIdKey);
    if (deviceId == null) {
      _deviceId = const Uuid().v4();
    } else {
      _deviceId = deviceId;
    }
    return unit;
  }

  @override
  Future<Unit> resetTracking() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(ITracking.trackingKey);
    return unit;
  }

  Future<dynamic> _getTracking() async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    return jsonDecode(prefs.getString(ITracking.trackingKey) ?? '{}');
  }

  Future<dynamic> _getLessonTracking(String lessonId) async {
    final tracking = await _getTracking();
    return tracking['lesson_$lessonId'] ?? {};
  }

  @override
  Future<Unit> newTrackingOnApp() async {
    print('newTrackingOnApp');
    final params = {
      'on_total': ITracking.threadhold / 1000,
      'start': true,
    };
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(ITracking.trackingKey, jsonEncode({'total': params['on_total']}));
    final response = api.post('$serverApi/students/on_app', data: params);
    return response.then(handleResponseError).then((value) {
      return unit;
    });
  }

  @override
  Future<Unit> updateTrackingOnApp(int total) async {
    print('updateTrackingOnApp');
    final params = {
      'on_total': total,
    };
    final tracking = await _getTracking();
    tracking['total'] = total;
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(ITracking.trackingKey, jsonEncode(tracking));
    final response = api.post('$serverApi/students/on_app', data: params);
    return response.then(handleResponseError).then((value) {
      return unit;
    });
  }

  @override
  Future<Unit> newTrackingOnLesson(String lessonId, TrackingLessonType type) async {
    print('newTrackingOnLesson');
    final tracking = await _getTracking();
    final lessonTracking = await _getLessonTracking(lessonId);
    lessonTracking[type.toString()] = ITracking.threadhold / 1000;
    tracking['lesson_$lessonId'] = lessonTracking;
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(ITracking.trackingKey, jsonEncode(tracking));

    final params = {'lesson_id': lessonId, 'start': true, type.toString(): lessonTracking[type.toString()]};
    final response = api.post('$serverApi/students/on_lesson', data: params);
    await response.then(handleResponseError);
    return unit;
  }

  @override
  Future<Unit> updateTrackingOnLesson(String lessonId, TrackingLessonType type, int total) async {
    print('updateTrackingOnLesson');
    final tracking = await _getTracking();
    final lessonTracking = await _getLessonTracking(lessonId);
    lessonTracking[type.toString()] = total;
    tracking['lesson_$lessonId'] = lessonTracking;
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(ITracking.trackingKey, jsonEncode(tracking));

    final params = {'lesson_id': lessonId, type.toString(): total};
    final response = api.post('$serverApi/students/on_lesson', data: params);
    await response.then(handleResponseError);
    return unit;
  }
}
