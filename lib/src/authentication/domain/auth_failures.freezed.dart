// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyUsed,
    required TResult Function() invalidEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyUsed,
    TResult? Function()? invalidEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyUsed,
    TResult Function()? invalidEmailPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelByUser<T> value) cancelByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyUsed<T> value) emailAlreadyUsed,
    required TResult Function(InvalidEmailPassword<T> value)
        invalidEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelByUser<T> value)? cancelByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult? Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelByUser<T> value)? cancelByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<T, $Res> {
  factory $AuthFailureCopyWith(
          AuthFailure<T> value, $Res Function(AuthFailure<T>) then) =
      _$AuthFailureCopyWithImpl<T, $Res, AuthFailure<T>>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<T, $Res, $Val extends AuthFailure<T>>
    implements $AuthFailureCopyWith<T, $Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelByUserCopyWith<T, $Res> {
  factory _$$CancelByUserCopyWith(
          _$CancelByUser<T> value, $Res Function(_$CancelByUser<T>) then) =
      __$$CancelByUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CancelByUserCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$CancelByUser<T>>
    implements _$$CancelByUserCopyWith<T, $Res> {
  __$$CancelByUserCopyWithImpl(
      _$CancelByUser<T> _value, $Res Function(_$CancelByUser<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelByUser<T> implements CancelByUser<T> {
  const _$CancelByUser();

  @override
  String toString() {
    return 'AuthFailure<$T>.cancelByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelByUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyUsed,
    required TResult Function() invalidEmailPassword,
  }) {
    return cancelByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyUsed,
    TResult? Function()? invalidEmailPassword,
  }) {
    return cancelByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyUsed,
    TResult Function()? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (cancelByUser != null) {
      return cancelByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelByUser<T> value) cancelByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyUsed<T> value) emailAlreadyUsed,
    required TResult Function(InvalidEmailPassword<T> value)
        invalidEmailPassword,
  }) {
    return cancelByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelByUser<T> value)? cancelByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult? Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
  }) {
    return cancelByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelByUser<T> value)? cancelByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (cancelByUser != null) {
      return cancelByUser(this);
    }
    return orElse();
  }
}

abstract class CancelByUser<T> implements AuthFailure<T> {
  const factory CancelByUser() = _$CancelByUser<T>;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<T, $Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError<T> value, $Res Function(_$ServerError<T>) then) =
      __$$ServerErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$ServerError<T>>
    implements _$$ServerErrorCopyWith<T, $Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError<T> _value, $Res Function(_$ServerError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError<T> implements ServerError<T> {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyUsed,
    required TResult Function() invalidEmailPassword,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyUsed,
    TResult? Function()? invalidEmailPassword,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyUsed,
    TResult Function()? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelByUser<T> value) cancelByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyUsed<T> value) emailAlreadyUsed,
    required TResult Function(InvalidEmailPassword<T> value)
        invalidEmailPassword,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelByUser<T> value)? cancelByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult? Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelByUser<T> value)? cancelByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements AuthFailure<T> {
  const factory ServerError() = _$ServerError<T>;
}

/// @nodoc
abstract class _$$EmailAlreadyUsedCopyWith<T, $Res> {
  factory _$$EmailAlreadyUsedCopyWith(_$EmailAlreadyUsed<T> value,
          $Res Function(_$EmailAlreadyUsed<T>) then) =
      __$$EmailAlreadyUsedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmailAlreadyUsedCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$EmailAlreadyUsed<T>>
    implements _$$EmailAlreadyUsedCopyWith<T, $Res> {
  __$$EmailAlreadyUsedCopyWithImpl(
      _$EmailAlreadyUsed<T> _value, $Res Function(_$EmailAlreadyUsed<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyUsed<T> implements EmailAlreadyUsed<T> {
  const _$EmailAlreadyUsed();

  @override
  String toString() {
    return 'AuthFailure<$T>.emailAlreadyUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyUsed<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyUsed,
    required TResult Function() invalidEmailPassword,
  }) {
    return emailAlreadyUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyUsed,
    TResult? Function()? invalidEmailPassword,
  }) {
    return emailAlreadyUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyUsed,
    TResult Function()? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (emailAlreadyUsed != null) {
      return emailAlreadyUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelByUser<T> value) cancelByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyUsed<T> value) emailAlreadyUsed,
    required TResult Function(InvalidEmailPassword<T> value)
        invalidEmailPassword,
  }) {
    return emailAlreadyUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelByUser<T> value)? cancelByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult? Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
  }) {
    return emailAlreadyUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelByUser<T> value)? cancelByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (emailAlreadyUsed != null) {
      return emailAlreadyUsed(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyUsed<T> implements AuthFailure<T> {
  const factory EmailAlreadyUsed() = _$EmailAlreadyUsed<T>;
}

/// @nodoc
abstract class _$$InvalidEmailPasswordCopyWith<T, $Res> {
  factory _$$InvalidEmailPasswordCopyWith(_$InvalidEmailPassword<T> value,
          $Res Function(_$InvalidEmailPassword<T>) then) =
      __$$InvalidEmailPasswordCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InvalidEmailPasswordCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$InvalidEmailPassword<T>>
    implements _$$InvalidEmailPasswordCopyWith<T, $Res> {
  __$$InvalidEmailPasswordCopyWithImpl(_$InvalidEmailPassword<T> _value,
      $Res Function(_$InvalidEmailPassword<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailPassword<T> implements InvalidEmailPassword<T> {
  const _$InvalidEmailPassword();

  @override
  String toString() {
    return 'AuthFailure<$T>.invalidEmailPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailPassword<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyUsed,
    required TResult Function() invalidEmailPassword,
  }) {
    return invalidEmailPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cancelByUser,
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyUsed,
    TResult? Function()? invalidEmailPassword,
  }) {
    return invalidEmailPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyUsed,
    TResult Function()? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailPassword != null) {
      return invalidEmailPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelByUser<T> value) cancelByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyUsed<T> value) emailAlreadyUsed,
    required TResult Function(InvalidEmailPassword<T> value)
        invalidEmailPassword,
  }) {
    return invalidEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CancelByUser<T> value)? cancelByUser,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult? Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
  }) {
    return invalidEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelByUser<T> value)? cancelByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyUsed<T> value)? emailAlreadyUsed,
    TResult Function(InvalidEmailPassword<T> value)? invalidEmailPassword,
    required TResult orElse(),
  }) {
    if (invalidEmailPassword != null) {
      return invalidEmailPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailPassword<T> implements AuthFailure<T> {
  const factory InvalidEmailPassword() = _$InvalidEmailPassword<T>;
}
