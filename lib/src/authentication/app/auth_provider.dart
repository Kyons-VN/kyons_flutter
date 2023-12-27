import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/data/shared.dart';
import 'package:logging/logging.dart';

import '../../authentication/data/auth_service.dart' as auth_service;
import '../../authentication/domain/i_auth.dart';
import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../knowledge/domain/i_knowledge.dart';
import '../data/auth_service.dart';

part 'auth_provider.freezed.dart';
part 'auth_state.dart';

Logger _log = Logger('auth_provider.dart');

class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthService authApi;
  final IKnowledgeApi knowledgeApi;
  // final AlwaysAliveRefreshable<TrackingNotifier> trackingProvider;
  AuthNotifier._(this.authApi, this.knowledgeApi) : super(const AuthState.initial());
  factory AuthNotifier(authApi, knowledgeApi, trackingApi) => AuthNotifier._(authApi, knowledgeApi);

  Future<Unit> stateChanged() async {
    // state = const AuthState.loading();
    final userEither = await auth_service.getUser().run(authApi);
    state = userEither.fold(
      (failure) => const AuthState.unAuthenticated(),
      (user) {
        // trackingProvider.enable();
        auth_service.setCurrentUser(user).run(authApi);
        return const AuthState.authenticated();
      },
    );
    _log.info('state:', state);
    return unit;
  }

  Future<Unit> signOut() async {
    // state = const AuthState.loading();
    await knowledge_service.removeSelectedProgram().run(knowledgeApi);
    // await tracking_service.resetTracking().run(trackingApi);
    await auth_service.signOut().run(authApi);
    state = const AuthState.unAuthenticated();
    return unit;
  }

  Future<bool> isSignedIn() async {
    final isSignIn = await authApi.getToken();
    return isSignIn.isNotEmpty;
  }
}

final authApiProvider = Provider<AuthService>((ref) => AuthService(
      api: Dio(),
      apiService: Api.init(ref as WidgetRef),
      hostName: ConfigReader.serverApi(),
      sharedService: ref.read(sharedRef),
    ));

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier._(ref.read(authApiProvider), ref.read(knowledgeApiProvider)));
