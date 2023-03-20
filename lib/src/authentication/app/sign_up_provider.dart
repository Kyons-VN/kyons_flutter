import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart' as auth_service;
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';
import 'package:shared_package/shared_package.dart';

part 'sign_up_provider.freezed.dart';
part 'sign_up_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final IAuth authApi;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpNotifier(this.authApi) : super(SignUpState.initial());

  void lastNameChanged(String lastName) {
    state = state.copyWith(lastName: lastName);
  }

  void firstNameChanged(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void emailChanged(String emailStr) {
    state = state.copyWith(emailAddress: EmailAddress(emailStr));
  }

  void passwordChanged(String password) {
    state = state.copyWith(password: Password(password), passwordStr: password);
  }

  void agreeChanged(bool isAgreed) {
    state = state.copyWith(isAgreedToTerms: isAgreed);
  }

  initial() {
    state = SignUpState.initial();
    if (ConfigReader.env == Environment.dev) {
      state = state.copyWith(
        emailAddress: EmailAddress('1025ss@te.st'),
        password: Password('Zaq1@wsx'),
      );
    }
  }

  Future<Unit> signUpBtnPressed() async {
    Either<AuthFailure, Unit> failureOrSuccess = left(const AuthFailure.invalidEmailPassword());

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isLastNameValid = state.lastName != '';
    final isFirstNameValid = state.firstName != '';
    if (isEmailValid && isPasswordValid && isLastNameValid && isFirstNameValid && state.isAgreedToTerms) {
      state = state.copyWith(
        isSubmitting: true,
      );
      failureOrSuccess = await auth_service
          .signUp(
            firstName: state.firstName,
            lastName: state.lastName,
            emailAddress: state.emailAddress.getValueOrError(),
            password: state.password.getValueOrError(),
            isAgreed: state.isAgreedToTerms,
          )
          .run(authApi);
    }
    state = state.copyWith(
      isSubmitting: false,
      shouldShowErrorMessages: true,
      signUpOption: optionOf(failureOrSuccess),
    );
    return unit;
  }
}

final signUpNotifierProvider =
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) => SignUpNotifier(ref.read(auth)));
