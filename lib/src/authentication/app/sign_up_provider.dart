import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';

part 'sign_up_provider.freezed.dart';
part 'sign_up_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final IAuth auth;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpNotifier(this.auth) : super(SignUpState.initial());

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
    state = SignUpState.initial();
    if (ConfigReader.env == Environment.dev) {
      state = state.copyWith(
        emailAddress: EmailAddress('1025ss@te.st'),
        password: 'Zaq1@wsx',
      );
    }
  }

  Future<Unit> signUp() async {
    final successOrFailure =
        await this.auth.signUp(state.firstName, state.lastName, state.emailAddress, state.firstName);
    return unit;
  }
}

final signUpNotifierProvider =
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) => SignUpNotifier(ref.read(auth)));
