import 'boostrap/config_reader.dart';
import 'boostrap/main_common.dart' if (dart.library.js) 'boostrap/main_common_web.dart';

Future<void> main() async {
  await mainCommon(Environment.dev);
}
