import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/user/data/package_dto.dart';
import 'package:kyons_flutter/src/user/data/transaction_dto.dart';
import 'package:kyons_flutter/src/user/domain/inventory.dart';
import 'package:kyons_flutter/src/user/domain/package.dart';
import 'package:kyons_flutter/src/user/domain/transaction.dart';

import '../../core/data/api.dart';
// import '../../core/data/apiService.api.dart';
import '../domain/balance.dart';
// import '../domain/i_order_apiService.api.dart';
import '../domain/i_order_api.dart';
import 'inventory_dto.dart';
import 'order_dto.dart';

class OrderApi implements IOrderApi {
  final Api apiService;
  final String hostName;

  OrderApi({required this.apiService, required this.hostName});

  @override
  Future<Unit> getFreeTrial() async {
    final response = apiService.api.get('$hostName/students/gifts/request_free_subscription');
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }

  @override
  Future<Balance> getBalance() async {
    final response = apiService.api.get('$hostName/students/balance');
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['data'] == null) return Balance(0);
      return BalanceDto.fromJson(data['data']).toDomain();
    });
  }

  @override
  Future<Inventory> getInventory() {
    final response = apiService.api.get('$hostName/students/inventories');
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      if (data['data'] == null) return Inventory.empty();
      return InventoryDto.fromJson(data['data']).toDomain();
    });
  }

  @override
  Future<List<Package>> getPackages() {
    final response = apiService.api.get('$hostName/students/packages');
    return response.then(handleResponseError).then((value) async {
      final map = Map<String, dynamic>.from(value);
      final data = map['data'] as List<dynamic>;
      // final data0 = Map.from(data[0]) as Map<String, dynamic>;
      // final asd = PackageDto.fromJson(data0).toDomain();
      // print(asd);
      return data.map((json) {
        json['discount'] = {
          'discount_amount': json['discount_amount'],
          'discount_type': json['discount_type'],
          'discount_value': json['discount_value']
        };
        json['package_items'] = json['package_items'].map((jsonItem) {
          jsonItem['service'] = {
            'service_amount': jsonItem['service_amount'],
            'service_type': jsonItem['service_type'],
            'service_type_text': jsonItem['service_type_text'],
          };
          return jsonItem;
        }).toList();
        final d = json as Map<String, dynamic>;
        return PackageDto.fromJson(d).toDomain();
      }).toList();
    });
  }

  @override
  Future<Unit> orderPackage(Package package, int quantity) async {
    final params = {
      'id': package.id,
      'quantity': quantity,
    };
    final response = apiService.api.post('$hostName/students/packages/order', data: params);
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }

  @override
  Future<List<Transaction>> getTransactions() async {
    final response = apiService.api.get('$hostName/students/transactions');
    return response.then(handleResponseError).then((value) async {
      if (value['data'] == null) return [];
      final data = value['data'] as List<dynamic>;
      if (data.isEmpty) return [];
      return data.map((json) => TransactionDto.fromJson(json).toDomain()).toList();
    });
  }
}
