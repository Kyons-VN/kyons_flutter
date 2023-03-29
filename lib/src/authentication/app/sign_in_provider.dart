import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../../boostrap/config_reader.dart';
import '../../authentication/app/auth_provider.dart';
import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/domain/i_auth.dart';
import '../../authentication/domain/user.dart';
import '../../authentication/domain/value_objects.dart';

part 'sign_in_provider.freezed.dart';
part 'sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final IAuthApi authApi;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignInNotifier(this.authApi) : super(SignInState.initial());

  void emailChanged(String emailStr) {
    state = state.copyWith(
      emailAddress: EmailAddress(emailStr),
    );
  }

  void passwordChanged(String password) {
    state = state.copyWith(
      password: password,
    );
  }

  initial() {
    state = SignInState.initial();
    if (ConfigReader.env == Environment.dev || ConfigReader.env == Environment.stg) {
      state = state.copyWith(
        // emailAddress: EmailAddress('binhhm2009+0311@gmail.com'),
        emailAddress: EmailAddress('ngocminhtam96+stgmob1@gmail.com'),
        password: 'P@ssword78',
      );
    }
  }

  Future<void> signInBtnPressed() async {
    Either<AuthFailure, Unit> failureOrSuccess = left(const AuthFailure.invalidEmailPassword());
    Either<AuthFailure, User> currentUser = right(User.empty());

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password != '';

    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(
        isSubmitting: true,
      );

      failureOrSuccess = await auth_service
          .signInEmailPassword(
            emailAddress: state.emailAddress.getValueOrError(),
            password: state.password,
          )
          .run(authApi);
      if (failureOrSuccess.isRight()) {
        currentUser = await auth_service.getUser().run(authApi);
      }
    }

    state = state.copyWith(
      isSubmitting: false,
      shouldShowErrorMessages: true,
      signInOption: optionOf(failureOrSuccess),
      currentUser: optionOf(currentUser),
    );
  }
}

final signInProvider = StateNotifierProvider.autoDispose<SignInNotifier, SignInState>(
  (ref) => SignInNotifier(ref.read(authApiProvider)),
);
