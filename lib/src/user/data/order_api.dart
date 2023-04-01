import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/user/data/package_dto.dart';
import 'package:kyons_flutter/src/user/data/transaction_dto.dart';
import 'package:kyons_flutter/src/user/domain/inventory.dart';
import 'package:kyons_flutter/src/user/domain/package.dart';
import 'package:kyons_flutter/src/user/domain/transaction.dart';

import '../../core/data/api.dart';
import '../domain/balance.dart';
import '../domain/i_order_api.dart';
import 'inventory_dto.dart';
import 'order_dto.dart';

class OrderApi implements IOrderApi {
  final api = Api.init().api;

  @override
  Future<Unit> getFreeTrial() async {
    final response = api.get('$serverApi/students/gifts/request_free_subscription');
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }

  @override
  Future<Balance> getBalance() async {
    final response = api.get('$serverApi/students/balance');
    return response.then(handleResponseError).then((value) async {
      return BalanceDto.fromJson(value).toDomain();
    });
  }

  @override
  Future<Inventory> getInventory() {
    final response = api.get('$serverApi/students/inventories');
    return response.then(handleResponseError).then((value) async {
      return InventoryDto.fromJson(value).toDomain();
    });
  }

  @override
  Future<List<Package>> getPackages() {
    final response = api.get('$serverApi/students/packages');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<Map<String, dynamic>>;
      return data.map((json) => PackageDto.fromJson(json).toDomain()).toList();
    });
  }

  @override
  Future<Unit> orderPackage(Package package, int quantity) async {
    final params = {
      'id': package.id,
      'quantity': quantity,
    };
    final response = api.post('$serverApi/students/packages/order', data: params);
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }

  @override
  Future<List<Transaction>> getTransactions() {
    final response = api.get('$serverApi/students/transactions');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<Map<String, dynamic>>;
      return data.map((json) => TransactionDto.fromJson(json).toDomain()).toList();
    });
  }
}
