import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../../authentication/domain/value_objects.dart';

part 'change_password_controller.freezed.dart';
part 'change_password_controller.g.dart';
part 'change_password_state.dart';

@riverpod
class ChangePasswordController extends _$ChangePasswordController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  ChangePasswordState build() => ChangePasswordState.initial();

  Unit oldPasswordChanged(String value) {
    state = state.copyWith(
      oldPassword: value,
      error: none(),
    );
    return unit;
  }

  Unit newPasswordChanged(String value) {
    state = state.copyWith(
      newPassword: Password(value),
      newPasswordStr: value,
      error: none(),
      notMatch: state.newPasswordStr != state.confirmPassword,
    );
    return unit;
  }

  Unit confirmPasswordChanged(String value) {
    state = state.copyWith(
      confirmPassword: value,
      error: none(),
      notMatch: state.newPasswordStr != state.confirmPassword,
    );
    return unit;
  }

  Future<Unit> submit() async {
    if (!state.shouldShowErrorMessages) {
      state = state.copyWith(
        shouldShowErrorMessages: true,
      );
    }
    if (state.oldPassword.isEmpty || state.newPassword.isInvalid() || state.notMatch) {
      return unit;
    }
    state = state.copyWith(
      isSubmitting: true,
      error: none(),
    );
    // final failureOrSuccess = await auth_service.
    return unit;
  }
}
