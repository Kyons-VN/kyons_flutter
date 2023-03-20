part of 'sign_up_provider.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailAddress emailAddress,
    required String firstName,
    required String lastName,
    required Password password,
    required String passwordStr,
    required bool isAgreedToTerms,
    required bool isSubmitting,
    required bool shouldShowErrorMessages,
    required Option<Either<AuthFailure, Unit>> signUpOption,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        emailAddress: EmailAddress(''),
        firstName: '',
        lastName: '',
        password: Password(''),
        passwordStr: '',
        isAgreedToTerms: false,
        isSubmitting: false,
        shouldShowErrorMessages: false,
        signUpOption: none(),
      );
}
