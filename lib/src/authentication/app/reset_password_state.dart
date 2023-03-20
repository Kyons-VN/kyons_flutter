part of 'reset_password_controller.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required EmailAddress emailAddress,
    required Password password,
    required String passwordStr,
    required String code,
    required bool isSubmitting,
    required bool shouldShowErrorMessages,
    required Option<Either<AuthFailure, Unit>> apiOption,
    required int step,
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      passwordStr: '',
      code: '',
      isSubmitting: false,
      shouldShowErrorMessages: false,
      apiOption: none(),
      step: 1);
}
