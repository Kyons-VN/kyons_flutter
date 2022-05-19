import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/data/auth.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService authService;

  AuthNotifier(this.authService) : super(const AuthState.initial());

  Future<void> signIn(String email, String password) async {
    state = const AuthState.loading();
    final result = authService.signInEmailPassword(emailAddress: email, password: password).run;
    // state = result.fold(
    //   (failure) => const AuthState.unAuthenticated(),
    //   (_) => const AuthState.authenticated(),
    // );
  }
}

final authService = Provider<AuthService>(
  (ref) => AuthService(),
);

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier(ref.read(authService)));
