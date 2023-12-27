import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/data/api.dart';

import '../../../boostrap/config_reader.dart';
import '../data/order_api.dart';

final orderApiProvider =
    Provider<OrderApi>((ref) => OrderApi(apiService: Api.init(ref as WidgetRef), hostName: ConfigReader.serverApi()));
