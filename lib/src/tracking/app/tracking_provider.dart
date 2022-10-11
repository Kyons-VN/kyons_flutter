import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/tracking/data/tracking_api.dart';
import 'package:kyons_flutter/src/tracking/data/tracking_service.dart' as tracking_service;

part 'tracking_provider.freezed.dart';
part 'tracking_state.dart';

class TrackingNotifier extends StateNotifier<TrackingState> {
  final TrackingApi trackingApi;
  TrackingNotifier(this.trackingApi) : super(TrackingState.initial());

  StreamSubscription? _sub;
  void enable() {
    final Stream<Either<ApiFailure<dynamic>, Unit>> myStream =
        Stream.periodic(const Duration(seconds: 10), ((e) => e + 1)).asyncExpand((event) {
      // print('Stream.periodic');
      return tracking_service.trackOnApp().run(trackingApi).asStream();
    });
    _sub = myStream.listen((successOrFailure) {
      successOrFailure.fold(
        (l) async {
          print('Cancel');
          if (_sub != null) await _sub!.cancel();
        },
        (data) {},
      );
    });
  }

  disable() async {
    if (_sub != null) await _sub!.cancel();
  }

  @override
  void dispose() async {
    if (_sub != null) await _sub!.cancel();
    super.dispose();
  }
}

final tracking = Provider<TrackingApi>(
  (ref) => TrackingApi.init(),
);

final trackingNotifierProvider =
    StateNotifierProvider<TrackingNotifier, TrackingState>((ref) => TrackingNotifier(ref.read(tracking)));
