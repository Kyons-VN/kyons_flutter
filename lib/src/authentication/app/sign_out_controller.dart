import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../authentication/data/auth_service.dart' as auth_service;
import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../tracking/app/tracking_provider.dart';
import '../../tracking/data/tracking_service.dart' as tracking_service;

part 'sign_out_controller.g.dart';

@riverpod
class SignOutController extends _$SignOutController {
  @override
  bool build() => false;
  Future<Unit> signOut() async {
    final knowledgeApi = ref.read(knowledgeApiProvider);
    final trackingApi = ref.read(trackingApiProvider);
    final authApi = ref.read(authApiProvider);
    await knowledge_service.removeSelectedProgram().run(knowledgeApi);
    await tracking_service.resetTracking().run(trackingApi);
    await auth_service.signOut().run(authApi);
    state = true;
    return unit;
  }
}
