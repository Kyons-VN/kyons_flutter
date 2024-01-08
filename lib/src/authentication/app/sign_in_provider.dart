import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/sandbox/data/sandbox_api.dart';
import 'package:shared_package/shared_package.dart';

import '../../../boostrap/config_reader.dart';
import '../../authentication/app/auth_provider.dart';
import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/domain/value_objects.dart';
import '../data/auth_entities.dart';
import '../data/auth_service.dart';

part 'sign_in_provider.freezed.dart';
part 'sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  final AuthApi authApi;
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
        emailAddress: EmailAddress('binhhm2009+0329@gmail.com'),
        password: 'Zaq1@wsx',
        // emailAddress: EmailAddress('ngocminhtam96+stgmob1@gmail.com'),
        // password: 'P@ssword78',
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

      if (SandboxApi.accounts.contains(state.emailAddress.getValueOrError())) {
        await SandboxApi.activate();
        failureOrSuccess = right(unit);
      } else {
        await SandboxApi.deactivate();
        failureOrSuccess = await auth_service
            .signInEmailPassword(
              emailAddress: state.emailAddress.getValueOrError(),
              password: state.password,
            )
            .run(authApi);
      }

      if (failureOrSuccess.isRight() && kIsWeb) {
        currentUser = await auth_service.getUser().run(authApi);
        final deviceToken = await FirebaseMessaging.instance.getToken(
            vapidKey: 'BP-BjvXQUjaznK89An_nvZWRmP6PCQxIGQ9OexTGstwXGbTgdPy5jkFtr9SIBJpUXZOMzHnQ_1-PTq2_jVP4ylI');
        print(deviceToken);
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
