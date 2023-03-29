import 'package:fpdart/fpdart.dart';

import '../../core/data/api.dart';
import '../domain/i_order.dart';

class OrderApi implements IOrder {
  final api = Api.init().api;

  @override
  Future<Unit> getFreeTrial() async {
    final response = api.get('$serverApi/students/gifts/request_free_subscription');
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }
}
