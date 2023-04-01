import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/user/domain/balance.dart';
import 'package:kyons_flutter/src/user/domain/transaction.dart';

import 'inventory.dart';
import 'package.dart';

abstract class IOrderApi {
  Future<Unit> getFreeTrial();
  Future<Balance> getBalance();
  Future<Inventory> getInventory();
  Future<List<Transaction>> getTransactions();
  Future<List<Package>> getPackages();
  Future<Unit> orderPackage(Package package, int quantity);
}
