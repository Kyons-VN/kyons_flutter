import 'boostrap/config_reader.dart';
import 'boostrap/main_common.dart';

Future<void> main() async {
  await mainCommon(Environment.prod);
}
