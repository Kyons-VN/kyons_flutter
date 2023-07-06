import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../data/order_service.dart' as order_service;
import '../../domain/balance.dart';
import '../../domain/package.dart';
import '../order_provider.dart';

part 'packages.state.dart';
part 'packages_controller.freezed.dart';
part 'packages_controller.g.dart';

@riverpod
class PackagesController extends _$PackagesController {
  @override
  PackagesState build() {
    _init();
    return PackagesState.initial();
  }

  Future<Unit> _init() async {
    final packagesFailureOrSuccess = await order_service.getPackages().run(ref.read(orderApiProvider));
    final balanceFailureOrSuccess = await order_service.getBalance().run(ref.read(orderApiProvider));
    state = state.copyWith(
      isLoading: false,
      packages: packagesFailureOrSuccess.toOption(),
      balance: balanceFailureOrSuccess.toOption(),
      error: balanceFailureOrSuccess.isLeft()
          ? balanceFailureOrSuccess.getLeft()
          : packagesFailureOrSuccess.isLeft()
              ? packagesFailureOrSuccess.getLeft()
              : none(),
    );
    return unit;
  }

  Future<Unit> buyPackage(Package package, int quality) async {
    state = state.copyWith(
      isLoading: true,
    );
    final failureOrSuccess = await order_service.orderPackage(package, quality).run(ref.read(orderApiProvider));
    final balanceFailureOrSuccess = await order_service.getBalance().run(ref.read(orderApiProvider));
    state = state.copyWith(
      isLoading: false,
      isDone: failureOrSuccess.isRight(),
      error: failureOrSuccess.isLeft() ? failureOrSuccess.getLeft() : none(),
      orderedPackage: failureOrSuccess.isRight() ? some(package) : none(),
      quantity: failureOrSuccess.isRight() ? some(quality) : none(),
      balance: balanceFailureOrSuccess.toOption(),
    );
    return unit;
  }

  Future<Unit> getBalance() async {
    final balanceFailureOrSuccess = await order_service.getBalance().run(ref.read(orderApiProvider));
    state = state.copyWith(
      balance: balanceFailureOrSuccess.toOption(),
      error: balanceFailureOrSuccess.isLeft() ? balanceFailureOrSuccess.getLeft() : none(),
    );
    return unit;
  }
}
