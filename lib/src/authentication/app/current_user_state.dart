part of 'current_user_provider.dart';

@freezed
class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState({
    required Option<User> userOption,
  }) = _CurrentUserState;
  factory CurrentUserState.initialize() => CurrentUserState(
        userOption: none(),
      );
}
