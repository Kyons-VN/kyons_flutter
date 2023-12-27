import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../../boostrap/config_reader.dart';
import '../../core/data/api.dart';
import '../../tracking/data/tracking_api.dart';

part 'tracking_state.dart';

class TrackingNotifier extends StateNotifier<TrackingState> {
  final TrackingApi trackingApi;
  TrackingNotifier(this.trackingApi) : super(TrackingState()) {
    trackingApi.init();
    final Stream<Either<ApiFailure<dynamic>, Unit>> myStream =
        Stream.periodic(const Duration(seconds: 2), ((e) => e + 1)) // TODO: Change duration
            .asyncExpand((event) {
      print('Stream.periodic');
      // return tracking_service.trackOnApp().run(trackingApi).asStream();
    });
    _sub = myStream.listen((successOrFailure) {
      successOrFailure.fold(
        (l) async {
          print('Cancel');
          await _sub.cancel();
        },
        (data) {},
      );
    });
  }

  late StreamSubscription _sub;
  void resume() {
    print('Cancel');
    _sub.resume();
  }

  pause() async {
    _sub.pause();
  }

  cancel() async {
    _sub.cancel();
  }

  // @override
  // void dispose() async {
  //   _sub.pause();
  //   await _sub.cancel();
  //   super.dispose();
  // }
}

final tracking = Provider<TrackingApi>(
  (ref) => TrackingApi.init(apiService: Api.init(ref as WidgetRef), hostName: ConfigReader.serverApi()),
);

final trackingNotifierProvider =
    StateNotifierProvider<TrackingNotifier, TrackingState>((ref) => TrackingNotifier(ref.read(tracking)));
