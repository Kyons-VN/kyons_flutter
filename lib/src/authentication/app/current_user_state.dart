part of 'current_user_provider.dart';

@freezed
class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState({
    required Option<User> user,
  }) = _CurrentUserState;
  factory CurrentUserState.initial() => CurrentUserState(user: none());
  factory CurrentUserState.data(User user) => CurrentUserState(user: some(user));
}
