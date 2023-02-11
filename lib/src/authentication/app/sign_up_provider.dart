import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/domain/auth_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/value_objects.dart';

part 'sign_up_provider.freezed.dart';
part 'sign_up_state.dart';

class SignUpNotifier extends StateNotifier<SignUpState> {
  final IAuth auth;
  SignUpNotifier(this.auth) : super(SignUpState.initial());

  Future<Unit> signUp() async {
    final successOrFailure =
        await this.auth.signUp(state.firstName, state.lastName, state.emailAddress, state.firstName);
    return unit;
  }
}

final signUpNotifierProvider =
    StateNotifierProvider<SignUpNotifier, SignUpState>((ref) => SignUpNotifier(ref.read(auth)));
