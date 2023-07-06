part of 'sign_up_provider.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required EmailAddress emailAddress,
    required String firstName,
    required String lastName,
    required Phone phone,
    required bool isAgreedToTerms,
    required DateTime birthdate,
    required String grade,
    required String school,
    required String address,
    required bool isSubmitting,
    required bool shouldShowErrorMessages,
    required Option<Either<AuthFailure, Unit>> signUpOption,
  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
        emailAddress: EmailAddress(''),
        firstName: '',
        lastName: '',
        phone: Phone(''),
        isAgreedToTerms: false,
        birthdate: DateTime.now(),
        grade: 'Lớp 10',
        school: '',
        address: citiesList.first,
        isSubmitting: false,
        shouldShowErrorMessages: false,
        signUpOption: none(),
      );
}
