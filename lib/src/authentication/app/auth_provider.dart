import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart' as auth_service;
import 'package:kyons_flutter/src/authentication/data/auth_service.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuth authApi;
  AuthNotifier._(this.authApi) : super(const AuthState.initial());
  // final AuthService authService;

  Future<Unit> stateChanged() async {
    state = const AuthState.loading();
    final userEither = await auth_service.getUser().run(authApi);
    state = userEither.fold((failure) => const AuthState.unAuthenticated(), (user) {
      return const AuthState.authenticated();
    });
    return Future.value(unit);
  }

  Future<Unit> signOut() async {
    state = const AuthState.loading();
    await auth_service.signOut().run(authApi);
    return Future.value(unit);
  }
}

final auth = Provider<Auth>(
  (ref) => Auth(),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier._(ref.read(auth)));
