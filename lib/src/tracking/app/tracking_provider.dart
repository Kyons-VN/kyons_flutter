import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../tracking/data/tracking_api.dart';
import '../../tracking/data/tracking_service.dart' as tracking_service;
import 'package:shared_package/shared_package.dart';

part 'tracking_state.dart';

class TrackingNotifier extends StateNotifier<TrackingState> {
  final TrackingApi trackingApi;
  TrackingNotifier(this.trackingApi) : super(TrackingState());

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
