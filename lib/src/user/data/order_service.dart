import 'package:fpdart/fpdart.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/data/api.dart';
import '../domain/balance.dart';
import '../domain/i_order_api.dart';
import '../domain/inventory.dart';
import '../domain/package.dart';
import '../domain/transaction.dart';

Reader<IOrderApi, Future<Either<ApiFailure, Unit>>> getFreeTrial() => Reader(
      (api) => _getFreeTrial(api).run(),
    );
TaskEither<ApiFailure, Unit> _getFreeTrial(IOrderApi api) => TaskEither.tryCatch(
      () => api.getFreeTrial(),
      handleError,
    );

Reader<IOrderApi, Future<Either<ApiFailure, Balance>>> getBalance() => Reader(
      (api) => _getBalance(api).run(),
    );
TaskEither<ApiFailure, Balance> _getBalance(IOrderApi api) => TaskEither.tryCatch(
      () => api.getBalance(),
      handleError,
    );

Reader<IOrderApi, Future<Either<ApiFailure, Inventory>>> getInventory() => Reader(
      (api) => _getInventory(api).run(),
    );
TaskEither<ApiFailure, Inventory> _getInventory(IOrderApi api) => TaskEither.tryCatch(
      () => api.getInventory(),
      handleError,
    );

Reader<IOrderApi, Future<Either<ApiFailure, List<Package>>>> getPackages() => Reader(
      (api) => _getPackages(api).run(),
    );
TaskEither<ApiFailure, List<Package>> _getPackages(IOrderApi api) => TaskEither.tryCatch(
      () => api.getPackages(),
      handleError,
    );

Reader<IOrderApi, Future<Either<ApiFailure, Unit>>> orderPackage(Package package, int quantity) => Reader(
      (api) => _orderPackage(api, package, quantity).run(),
    );
TaskEither<ApiFailure, Unit> _orderPackage(IOrderApi api, Package package, int quantity) => TaskEither.tryCatch(
      () => api.orderPackage(package, quantity),
      handleError,
    );

Reader<IOrderApi, Future<Either<ApiFailure, List<Transaction>>>> getTransactions() => Reader(
      (api) => _getTransactions(api).run(),
    );
TaskEither<ApiFailure, List<Transaction>> _getTransactions(IOrderApi api) => TaskEither.tryCatch(
      () => api.getTransactions(),
      handleError,
    );
