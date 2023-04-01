part of 'update_info_controller.dart';

@freezed
class UpdateInfoState with _$UpdateInfoState {
  const factory UpdateInfoState({
    required Option<User> user,
    required bool isSubmitting,
    required String firstName,
    required String lastName,
    required EmailAddress email,
    required XFile profilePicture,
    required bool isLoading,
    required bool shouldShowErrorMessages,
  }) = _UpdateInfoState;
  factory UpdateInfoState.initial() => UpdateInfoState(
        user: none(),
        isSubmitting: false,
        firstName: '',
        lastName: '',
        email: EmailAddress(''),
        profilePicture: XFile(''),
        isLoading: true,
        shouldShowErrorMessages: false,
      );
  factory UpdateInfoState.hasUser(Either<ClientFailure<dynamic>, User> userFailureOrSuccess) {
    final user = userFailureOrSuccess.getOrElse((l) => User.empty());
    return UpdateInfoState(
      user: userFailureOrSuccess.toOption(),
      isSubmitting: false,
      firstName: user.firstName,
      lastName: user.lastName,
      email: EmailAddress(user.email),
      profilePicture: XFile(''),
      isLoading: false,
      shouldShowErrorMessages: false,
    );
  }
}
