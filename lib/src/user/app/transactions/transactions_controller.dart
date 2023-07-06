import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/user/app/order_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../data/order_service.dart' as order_service;
import '../../domain/transaction.dart';

part 'transactions_controller.freezed.dart';
part 'transactions_controller.g.dart';
part 'transactions_state.dart';

@riverpod
class TransactionsController extends _$TransactionsController {
  @override
  // Future<Either<ApiFailure, List<Transaction>>> build() async {
  TransactionsState build() {
    _init();
    return TransactionsState.initial();
  }

  Future<Unit> _init() async {
    final failureOrSuccess = await order_service.getTransactions().run(ref.read(orderApiProvider));
    failureOrSuccess.fold(
      (l) => state = TransactionsState.error(l),
      (r) => state = TransactionsState.data(r),
    );
    return unit;
  }
}
