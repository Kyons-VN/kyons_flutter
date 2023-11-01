import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../authentication/data/auth_api.dart';
import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/domain/i_auth.dart';
import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../knowledge/domain/i_knowledge.dart';
import '../../tracking/app/tracking_provider.dart';
import '../../tracking/data/tracking_service.dart' as tracking_service;
import '../../tracking/domain/i_tracking.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthApi authApi;
  final IKnowledgeApi knowledgeApi;
  final ITracking trackingApi;
  AuthNotifier._(this.authApi, this.knowledgeApi, this.trackingApi) : super(const AuthState.initial());
  factory AuthNotifier(authApi, knowledgeApi, trackingApi) => AuthNotifier._(authApi, knowledgeApi, trackingApi);

  Future<Unit> stateChanged() async {
    // state = const AuthState.loading();
    final userEither = await auth_service.getUser().run(authApi);
    state = userEither.fold((failure) => const AuthState.unAuthenticated(), (user) {
      trackingApi.init();
      auth_service.setCurrentUser(user).run(authApi);
      return const AuthState.authenticated();
    });
    return unit;
  }

  Future<Unit> signOut() async {
    // state = const AuthState.loading();
    await knowledge_service.removeSelectedProgram().run(knowledgeApi);
    await tracking_service.resetTracking().run(trackingApi);
    await auth_service.signOut().run(authApi);
    return unit;
  }

  Future<bool> isSignedIn() async {
    final isSignIn = await auth_service.getToken();
    return isSignIn.isNotEmpty;
  }
}

final authApiProvider = Provider<AuthApi>(
  (ref) => AuthApi(),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier._(ref.read(authApiProvider), ref.read(knowledgeApiProvider), ref.read(tracking)));
