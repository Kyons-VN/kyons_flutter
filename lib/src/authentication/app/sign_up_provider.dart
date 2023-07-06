import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/data/cities_list.dart';
import 'package:shared_package/shared_package.dart';

import '../../authentication/app/auth_provider.dart';
import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/domain/i_auth.dart';
import '../../authentication/domain/value_objects.dart';

part 'sign_up_provider.freezed.dart';
part 'sign_up_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final IAuthApi authApi;
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

  void phoneChanged(String phone) {
    state = state.copyWith(phone: Phone(phone));
  }

  void birthdateChanged(DateTime birthdate) {
    state = state.copyWith(birthdate: birthdate);
  }

  void gradeChanged(String grade) {
    state = state.copyWith(grade: grade);
  }

  void schoolChanged(String school) {
    state = state.copyWith(school: school);
  }

  void addressChanged(String address) {
    state = state.copyWith(address: address);
  }

  void agreeChanged(bool isAgreed) {
    state = state.copyWith(isAgreedToTerms: isAgreed);
  }

  void showValidation() {
    state = state.copyWith(shouldShowErrorMessages: true);
  }

  Future<Unit> signUpBtnPressed() async {
    Either<AuthFailure, Unit> failureOrSuccess = left(const AuthFailure.invalidEmailPassword());

    final isEmailValid = state.emailAddress.isValid();
    final isLastNameValid = state.lastName != '';
    final isFirstNameValid = state.firstName != '';
    final isPhoneValid = state.phone.isValid();
    if (isEmailValid && isPhoneValid && isLastNameValid && isFirstNameValid && state.isAgreedToTerms) {
      state = state.copyWith(
        isSubmitting: true,
      );
      failureOrSuccess = await auth_service
          .signUp(
            firstName: state.firstName,
            lastName: state.lastName,
            emailAddress: state.emailAddress.getValueOrError().trim(),
            phone: state.phone.getValueOrError().trim(),
            birthdate: state.birthdate,
            grade: state.grade,
            school: state.school,
            address: state.address,
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
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) => SignUpNotifier(ref.read(authApiProvider)));
