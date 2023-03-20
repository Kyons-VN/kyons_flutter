import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/boostrap/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
