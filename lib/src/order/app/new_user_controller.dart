import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/order_service.dart' as order_service;
import 'order_provider.dart';

part 'new_user_controller.g.dart';

@riverpod
class NewUserController extends _$NewUserController {
  @override
  FutureOr<void> build() {}

  Future<Unit> getFreeTrial() async {
    state = const AsyncLoading();
    final failureOrSuccess = await order_service.getFreeTrial().run(ref.read(orderApiProvider));
    state = failureOrSuccess.fold(
        (l) => AsyncError(l, StackTrace.fromString('NewUserController:getFreeTrial')), (r) => AsyncData(r));
    return unit;
  }
}
