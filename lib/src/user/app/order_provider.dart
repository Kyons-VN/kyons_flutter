import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/data/shared.dart';

import '../../../boostrap/config_reader.dart';
import '../data/order_api.dart';

final orderApiProvider = Provider<OrderApi>(
    (ref) => OrderApi(apiService: Api.init(ref.read(sharedRef), Dio()), hostName: ConfigReader.serverApi()));
