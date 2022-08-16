import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart' as auth_service;
import 'package:kyons_flutter/src/authentication/data/auth_service.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuth authApi;
  final IKnowledge knowledgeApi;
  AuthNotifier._(this.authApi, this.knowledgeApi) : super(const AuthState.initial());
  factory AuthNotifier(IAuth authApi, knowledgeApi) => AuthNotifier._(authApi, knowledgeApi);

  Future<Unit> stateChanged() async {
    state = const AuthState.loading();
    final userEither = await auth_service.getUser().run(authApi);
    state = userEither.fold((failure) => const AuthState.unAuthenticated(), (user) {
      auth_service.setCurrentUser(user).run(authApi);
      return const AuthState.authenticated();
    });
    return unit;
  }

  Future<Unit> signOut() async {
    state = const AuthState.loading();
    await knowledge_service.removeSelectedProgram().run(knowledgeApi);
    await auth_service.signOut().run(authApi);
    return unit;
  }

  Future<bool> isSignedIn() async {
    final isSignIn = await auth_service.getToken();
    return isSignIn.isNotEmpty;
  }
}

final auth = Provider<Auth>(
  (ref) => Auth(),
);

final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier._(ref.read(auth), ref.read(knowledge)));
