// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get passwordStr => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get shouldShowErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get apiOption =>
      throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res, ResetPasswordState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      String passwordStr,
      String code,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> apiOption,
      int step});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res, $Val extends ResetPasswordState>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? passwordStr = null,
    Object? code = null,
    Object? isSubmitting = null,
    Object? shouldShowErrorMessages = null,
    Object? apiOption = null,
    Object? step = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      apiOption: null == apiOption
          ? _value.apiOption
          : apiOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      String passwordStr,
      String code,
      bool isSubmitting,
      bool shouldShowErrorMessages,
      Option<Either<AuthFailure, Unit>> apiOption,
      int step});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res, _$_ResetPasswordState>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? passwordStr = null,
    Object? code = null,
    Object? isSubmitting = null,
    Object? shouldShowErrorMessages = null,
    Object? apiOption = null,
    Object? step = null,
  }) {
    return _then(_$_ResetPasswordState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      passwordStr: null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      apiOption: null == apiOption
          ? _value.apiOption
          : apiOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.emailAddress,
      required this.password,
      required this.passwordStr,
      required this.code,
      required this.isSubmitting,
      required this.shouldShowErrorMessages,
      required this.apiOption,
      required this.step});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final String passwordStr;
  @override
  final String code;
  @override
  final bool isSubmitting;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> apiOption;
  @override
  final int step;

  @override
  String toString() {
    return 'ResetPasswordState(emailAddress: $emailAddress, password: $password, passwordStr: $passwordStr, code: $code, isSubmitting: $isSubmitting, shouldShowErrorMessages: $shouldShowErrorMessages, apiOption: $apiOption, step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(
                    other.shouldShowErrorMessages, shouldShowErrorMessages) ||
                other.shouldShowErrorMessages == shouldShowErrorMessages) &&
            (identical(other.apiOption, apiOption) ||
                other.apiOption == apiOption) &&
            (identical(other.step, step) || other.step == step));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      passwordStr,
      code,
      isSubmitting,
      shouldShowErrorMessages,
      apiOption,
      step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final String passwordStr,
      required final String code,
      required final bool isSubmitting,
      required final bool shouldShowErrorMessages,
      required final Option<Either<AuthFailure, Unit>> apiOption,
      required final int step}) = _$_ResetPasswordState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  String get passwordStr;
  @override
  String get code;
  @override
  bool get isSubmitting;
  @override
  bool get shouldShowErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get apiOption;
  @override
  int get step;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
