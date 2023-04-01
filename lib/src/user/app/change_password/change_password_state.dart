part of 'change_password_controller.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required bool isSubmitting,
    required String oldPassword,
    required Password newPassword,
    required String newPasswordStr,
    required String confirmPassword,
    required bool shouldShowErrorMessages,
    required Option<ApiFailure> error,
    required bool notMatch,
  }) = _ChangePasswordState;
  factory ChangePasswordState.initial() => ChangePasswordState(
        isSubmitting: false,
        oldPassword: '',
        newPassword: Password(''),
        confirmPassword: '',
        newPasswordStr: '',
        shouldShowErrorMessages: false,
        error: none(),
        notMatch: false,
      );
}
