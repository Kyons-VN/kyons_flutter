import 'package:fpdart/fpdart.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/data/api.dart';
import '../domain/i_order.dart';

Reader<IOrder, Future<Either<ApiFailure, Unit>>> getFreeTrial() => Reader(
      (api) => _getFreeTrial(api).run(),
    );
TaskEither<ApiFailure, Unit> _getFreeTrial(IOrder api) => TaskEither.tryCatch(
      () => api.getFreeTrial(),
      handleError,
    );
