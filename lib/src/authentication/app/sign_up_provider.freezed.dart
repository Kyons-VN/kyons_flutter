// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  EmailAddress get emailAddress =>
      throw _privateConstructorUsedError; // required String firstName,
// required String lastName,
// required Phone phone,
  bool get isAgreedToTerms =>
      throw _privateConstructorUsedError; // required DateTime birthdate,
// required String grade,
// required String school,
// required String address,
  Password get password => throw _privateConstructorUsedError;
  String get passwordStr => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get shouldShowErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get signUpOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      bool isAgreedToTerms,
      Password password,
      String passwordStr,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpOption});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? isAgreedToTerms = null,
    Object? password = null,
    Object? passwordStr = null,
    Object? isSubmitting = null,
    Object? shouldShowErrorMessages = null,
    Object? signUpOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isAgreedToTerms: null == isAgreedToTerms
          ? _value.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpOption: null == signUpOption
          ? _value.signUpOption
          : signUpOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      bool isAgreedToTerms,
      Password password,
      String passwordStr,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpOption});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? isAgreedToTerms = null,
    Object? password = null,
    Object? passwordStr = null,
    Object? isSubmitting = null,
    Object? shouldShowErrorMessages = null,
    Object? signUpOption = null,
  }) {
    return _then(_$SignUpStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isAgreedToTerms: null == isAgreedToTerms
          ? _value.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      signUpOption: null == signUpOption
          ? _value.signUpOption
          : signUpOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {required this.emailAddress,
      required this.isAgreedToTerms,
      required this.password,
      required this.passwordStr,
      required this.isSubmitting,
      required this.shouldShowErrorMessages,
      required this.signUpOption});

  @override
  final EmailAddress emailAddress;
// required String firstName,
// required String lastName,
// required Phone phone,
  @override
  final bool isAgreedToTerms;
// required DateTime birthdate,
// required String grade,
// required String school,
// required String address,
  @override
  final Password password;
  @override
  final String passwordStr;
  @override
  final bool isSubmitting;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> signUpOption;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, isAgreedToTerms: $isAgreedToTerms, password: $password, passwordStr: $passwordStr, isSubmitting: $isSubmitting, shouldShowErrorMessages: $shouldShowErrorMessages, signUpOption: $signUpOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.isAgreedToTerms, isAgreedToTerms) ||
                other.isAgreedToTerms == isAgreedToTerms) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(
                    other.shouldShowErrorMessages, shouldShowErrorMessages) ||
                other.shouldShowErrorMessages == shouldShowErrorMessages) &&
            (identical(other.signUpOption, signUpOption) ||
                other.signUpOption == signUpOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      isAgreedToTerms,
      password,
      passwordStr,
      isSubmitting,
      shouldShowErrorMessages,
      signUpOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {required final EmailAddress emailAddress,
          required final bool isAgreedToTerms,
          required final Password password,
          required final String passwordStr,
          required final bool isSubmitting,
          required final bool shouldShowErrorMessages,
          required final Option<Either<AuthFailure, Unit>> signUpOption}) =
      _$SignUpStateImpl;

  @override
  EmailAddress get emailAddress;
  @override // required String firstName,
// required String lastName,
// required Phone phone,
  bool get isAgreedToTerms;
  @override // required DateTime birthdate,
// required String grade,
// required String school,
// required String address,
  Password get password;
  @override
  String get passwordStr;
  @override
  bool get isSubmitting;
  @override
  bool get shouldShowErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get signUpOption;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
