// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  String get newPasswordStr => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  bool get shouldShowErrorMessages => throw _privateConstructorUsedError;
  Option<ApiFailure> get error => throw _privateConstructorUsedError;
  bool get notMatch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      String oldPassword,
      Password newPassword,
      String newPasswordStr,
      String confirmPassword,
      bool shouldShowErrorMessages,
      Option<ApiFailure> error,
      bool notMatch});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? newPasswordStr = null,
    Object? confirmPassword = null,
    Object? shouldShowErrorMessages = null,
    Object? error = null,
    Object? notMatch = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPasswordStr: null == newPasswordStr
          ? _value.newPasswordStr
          : newPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      notMatch: null == notMatch
          ? _value.notMatch
          : notMatch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      String oldPassword,
      Password newPassword,
      String newPasswordStr,
      String confirmPassword,
      bool shouldShowErrorMessages,
      Option<ApiFailure> error,
      bool notMatch});
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_ChangePasswordState>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? newPasswordStr = null,
    Object? confirmPassword = null,
    Object? shouldShowErrorMessages = null,
    Object? error = null,
    Object? notMatch = null,
  }) {
    return _then(_$_ChangePasswordState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPasswordStr: null == newPasswordStr
          ? _value.newPasswordStr
          : newPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      shouldShowErrorMessages: null == shouldShowErrorMessages
          ? _value.shouldShowErrorMessages
          : shouldShowErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      notMatch: null == notMatch
          ? _value.notMatch
          : notMatch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.isSubmitting,
      required this.oldPassword,
      required this.newPassword,
      required this.newPasswordStr,
      required this.confirmPassword,
      required this.shouldShowErrorMessages,
      required this.error,
      required this.notMatch});

  @override
  final bool isSubmitting;
  @override
  final String oldPassword;
  @override
  final Password newPassword;
  @override
  final String newPasswordStr;
  @override
  final String confirmPassword;
  @override
  final bool shouldShowErrorMessages;
  @override
  final Option<ApiFailure> error;
  @override
  final bool notMatch;

  @override
  String toString() {
    return 'ChangePasswordState(isSubmitting: $isSubmitting, oldPassword: $oldPassword, newPassword: $newPassword, newPasswordStr: $newPasswordStr, confirmPassword: $confirmPassword, shouldShowErrorMessages: $shouldShowErrorMessages, error: $error, notMatch: $notMatch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.newPasswordStr, newPasswordStr) ||
                other.newPasswordStr == newPasswordStr) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(
                    other.shouldShowErrorMessages, shouldShowErrorMessages) ||
                other.shouldShowErrorMessages == shouldShowErrorMessages) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.notMatch, notMatch) ||
                other.notMatch == notMatch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSubmitting,
      oldPassword,
      newPassword,
      newPasswordStr,
      confirmPassword,
      shouldShowErrorMessages,
      error,
      notMatch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required final bool isSubmitting,
      required final String oldPassword,
      required final Password newPassword,
      required final String newPasswordStr,
      required final String confirmPassword,
      required final bool shouldShowErrorMessages,
      required final Option<ApiFailure> error,
      required final bool notMatch}) = _$_ChangePasswordState;

  @override
  bool get isSubmitting;
  @override
  String get oldPassword;
  @override
  Password get newPassword;
  @override
  String get newPasswordStr;
  @override
  String get confirmPassword;
  @override
  bool get shouldShowErrorMessages;
  @override
  Option<ApiFailure> get error;
  @override
  bool get notMatch;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
