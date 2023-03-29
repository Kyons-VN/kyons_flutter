import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_package/shared_package.dart';

import '../../authentication/app/auth_provider.dart';
import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/domain/value_objects.dart';

part 'reset_password_controller.freezed.dart';
part 'reset_password_controller.g.dart';
part 'reset_password_state.dart';

@riverpod
class ResetPasswordController extends _$ResetPasswordController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  ResetPasswordState build() {
    return ResetPasswordState.initial();
  }

  void emailChanged(String emailStr) {
    state = state.copyWith(emailAddress: EmailAddress(emailStr));
  }

  void passwordChanged(String password) {
    state = state.copyWith(password: Password(password), passwordStr: password);
  }

  void codeChanged(String code) {
    state = state.copyWith(code: code);
  }

  Future<Unit> sendEmailBtnPressed() async {
    Either<AuthFailure, Unit> failureOrSuccess = left(const AuthFailure.invalidEmail());

    final isEmailValid = state.emailAddress.isValid();

    if (isEmailValid) {
      state = state.copyWith(
        isSubmitting: true,
      );

      failureOrSuccess = await auth_service
          .requestResetPassword(
            state.emailAddress.getValueOrError(),
          )
          .run(ref.read(authApiProvider));
    }
    state = state.copyWith(
      isSubmitting: false,
      step: failureOrSuccess.isRight() ? 2 : 1,
      apiOption: optionOf(failureOrSuccess),
    );
    return unit;
  }

  Future<Unit> newPassword() async {
    Either<AuthFailure, Unit> failureOrSuccess = right(unit);

    final isPasswordValid = state.password.isValid();
    final isCodeValid = state.code.length == 6;

    if (isPasswordValid && isCodeValid) {
      state = state.copyWith(
        isSubmitting: true,
      );

      failureOrSuccess = await auth_service
          .newPassword(
            emailAddress: state.emailAddress.getValueOrError(),
            password: state.password.getValueOrError(),
            code: state.code,
          )
          .run(ref.read(authApiProvider));
    }
    state = state.copyWith(
      isSubmitting: false,
      apiOption: optionOf(failureOrSuccess),
    );
    return unit;
  }
}
