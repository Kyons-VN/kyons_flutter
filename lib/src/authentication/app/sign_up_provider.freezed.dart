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
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get passwordStr => throw _privateConstructorUsedError;
  bool get isAgreedToTerms => throw _privateConstructorUsedError;
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
      String firstName,
      String lastName,
      Password password,
      String passwordStr,
      bool isAgreedToTerms,
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
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? passwordStr = null,
    Object? isAgreedToTerms = null,
    Object? isSubmitting = null,
    Object? shouldShowErrorMessages = null,
    Object? signUpOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
      isAgreedToTerms: null == isAgreedToTerms
          ? _value.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$_SignUpStateCopyWith(
          _$_SignUpState value, $Res Function(_$_SignUpState) then) =
      __$$_SignUpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      String firstName,
      String lastName,
      Password password,
      String passwordStr,
      bool isAgreedToTerms,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> signUpOption});
}

/// @nodoc
class __$$_SignUpStateCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$_SignUpState>
    implements _$$_SignUpStateCopyWith<$Res> {
  __$$_SignUpStateCopyWithImpl(
      _$_SignUpState _value, $Res Function(_$_SignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? passwordStr = null,
    Object? isAgreedToTerms = null,
    Object? isSubmitting = null,
    Object? shouldShowErrorMessages = null,
    Object? signUpOption = null,
  }) {
    return _then(_$_SignUpState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
      isAgreedToTerms: null == isAgreedToTerms
          ? _value.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.emailAddress,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.passwordStr,
      required this.isAgreedToTerms,
      required this.isSubmitting,
      required this.shouldShowErrorMessages,
      required this.signUpOption});

  @override
  final EmailAddress emailAddress;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final Password password;
  @override
  final String passwordStr;
  @override
  final bool isAgreedToTerms;
  @override
  final bool isSubmitting;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> signUpOption;

  @override
  String toString() {
    return 'SignUpState(emailAddress: $emailAddress, firstName: $firstName, lastName: $lastName, password: $password, passwordStr: $passwordStr, isAgreedToTerms: $isAgreedToTerms, isSubmitting: $isSubmitting, shouldShowErrorMessages: $shouldShowErrorMessages, signUpOption: $signUpOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr) &&
            (identical(other.isAgreedToTerms, isAgreedToTerms) ||
                other.isAgreedToTerms == isAgreedToTerms) &&
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
      firstName,
      lastName,
      password,
      passwordStr,
      isAgreedToTerms,
      isSubmitting,
      shouldShowErrorMessages,
      signUpOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      __$$_SignUpStateCopyWithImpl<_$_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
          {required final EmailAddress emailAddress,
          required final String firstName,
          required final String lastName,
          required final Password password,
          required final String passwordStr,
          required final bool isAgreedToTerms,
          required final bool isSubmitting,
          required final bool shouldShowErrorMessages,
          required final Option<Either<AuthFailure, Unit>> signUpOption}) =
      _$_SignUpState;

  @override
  EmailAddress get emailAddress;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  Password get password;
  @override
  String get passwordStr;
  @override
  bool get isAgreedToTerms;
  @override
  bool get isSubmitting;
  @override
  bool get shouldShowErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get signUpOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpStateCopyWith<_$_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
