import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_out_controller.g.dart';

@riverpod
class SignOutController extends _$SignOutController {
  @override
  bool build() => false;
  Future<Unit> signOut() async {
    ref.read(authNotifierProvider.notifier).signOut();
    state = true;
    return unit;
  }
}
