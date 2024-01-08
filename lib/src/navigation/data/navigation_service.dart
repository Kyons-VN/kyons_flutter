import 'package:fpdart/fpdart.dart';

import '../../navigation/app/router.dart';

Unit saveRedirecPath(String path) {
  return AppRouter.pushRedirect(path);
}
