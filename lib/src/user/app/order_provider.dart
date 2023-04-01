import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../data/order_api.dart';

final orderApiProvider = Provider<OrderApi>((ref) => OrderApi());
