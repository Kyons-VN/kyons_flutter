part of 'sign_in_provider.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress emailAddress,
    required String password,
    required bool isSubmitting,
    required bool shouldShowErrorMessages,
    required Option<Either<AuthFailure, Unit>> signInOption,
    required Option<Either<AuthFailure, User>> currentUser,
    required Option<String> redirectPath,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        emailAddress: EmailAddress(''),
        password: '',
        isSubmitting: false,
        shouldShowErrorMessages: false,
        signInOption: none(),
        currentUser: none(),
        redirectPath: none(),
      );
}
