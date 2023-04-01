import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../data/order_service.dart' as order_service;
import '../../domain/balance.dart';
import '../../domain/inventory.dart';
import '../order_provider.dart';

part 'summary_controller.freezed.dart';
part 'summary_controller.g.dart';
part 'summary_state.dart';

@riverpod
class SummaryController extends _$SummaryController {
  @override
  SummaryState build() {
    _init();
    return SummaryState.initial();
  }

  Future<Unit> _init() async {
    final balanceFailureOrSuccess = await order_service.getBalance().run(ref.read(orderApiProvider));
    final inventoryFailureOrSuccess = await order_service.getInventory().run(ref.read(orderApiProvider));
    // Combine 2 Futures to one with all results
    // final result = await Future.wait([balanceFailureOrSuccess, inventoryFailureOrSuccess]);
    // state = state.copyWith(balance: some(result[0] as Balance), inventory: some(result[1] as Inventory));
    // or use fpdart to combine 2 Futures
    state = state.copyWith(
      balance: balanceFailureOrSuccess.getOrElse((_) => Balance.empty()),
      inventory: inventoryFailureOrSuccess.getOrElse((_) => Inventory.empty()),
      error: balanceFailureOrSuccess.isLeft()
          ? balanceFailureOrSuccess.getLeft()
          : inventoryFailureOrSuccess.isLeft()
              ? inventoryFailureOrSuccess.getLeft()
              : none(),
    );
    // or use fpdart to combine 2 Futures with error handling
    // balanceFailureOrSuccess.andThen(() => inventoryFailureOrSuccess).fold((l) {
    //   state = state.copyWith(error: some(l));
    // }, (r) => state = state.copyWith(balance: some(r[0] as Balance), inventory: some(r[1] as Inventory)));
    return unit;
  }
}
