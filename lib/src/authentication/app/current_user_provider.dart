import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/domain/i_auth.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';

part 'current_user_provider.freezed.dart';
part 'current_user_state.dart';

class CurrentUserNotifier extends StateNotifier<CurrentUserState> {
  final IAuth authApi;

  CurrentUserNotifier(this.authApi) : super(CurrentUserState.initial());
  void init() {
    state = CurrentUserState.initial();
  }
}

final currentUserNotifierProvider =
    StateNotifierProvider<CurrentUserNotifier, CurrentUserState>((ref) => CurrentUserNotifier(ref.read(auth)));
