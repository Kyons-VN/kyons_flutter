import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart' hide Reader;
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart' as auth_service;
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';

part 'sign_in_provider.freezed.dart';
part 'sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final IAuth authApi;
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
    if (ConfigReader.env == Environment.dev) {
      state = state.copyWith(
        emailAddress: EmailAddress('binhhm2009+0827ss@gmail.com'),
        password: 'Zaq1@wsx',
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
  (ref) => SignInNotifier(ref.read(
    auth,
  )),
);
