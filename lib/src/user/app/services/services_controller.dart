// import 'package:fpdart/fpdart.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:kyons_flutter/src/user/app/order_provider.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:shared_package/shared_package.dart';

// import '../../data/order_service.dart' as order_service;
// import '../../domain/service.dart';

// part 'services_controller.freezed.dart';
// part 'services_controller.g.dart';
// part 'services_state.dart';

// @riverpod
// class ServicesController extends _$ServicesController {
//   @override
//   // Future<Either<ApiFailure, List<Service>>> build() async {
//   ServicesState build() {
//     _init();
//     return ServicesState.initial();
//   }

//   Future<Unit> _init() async {
//     final failureOrSuccess = await order_service.getServices().run(ref.read(orderApiProvider));
//     failureOrSuccess.fold(
//       (l) => state = ServicesState.error(l),
//       (r) => state = ServicesState.data(r),
//     );
//     return unit;
//   }
// }
