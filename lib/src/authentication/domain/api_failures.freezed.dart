// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientError<T> value) clientError,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(UnAuthenticated<T> value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientError<T> value)? clientError,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(UnAuthenticated<T> value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientError<T> value)? clientError,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(UnAuthenticated<T> value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<T, $Res> {
  factory $ApiFailureCopyWith(
          ApiFailure<T> value, $Res Function(ApiFailure<T>) then) =
      _$ApiFailureCopyWithImpl<T, $Res, ApiFailure<T>>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<T, $Res, $Val extends ApiFailure<T>>
    implements $ApiFailureCopyWith<T, $Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientErrorCopyWith<T, $Res> {
  factory _$$ClientErrorCopyWith(
          _$ClientError<T> value, $Res Function(_$ClientError<T>) then) =
      __$$ClientErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ClientErrorCopyWithImpl<T, $Res>
    extends _$ApiFailureCopyWithImpl<T, $Res, _$ClientError<T>>
    implements _$$ClientErrorCopyWith<T, $Res> {
  __$$ClientErrorCopyWithImpl(
      _$ClientError<T> _value, $Res Function(_$ClientError<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientError<T> implements ClientError<T> {
  const _$ClientError();

  @override
  String toString() {
    return 'ApiFailure<$T>.clientError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() unAuthenticated,
  }) {
    return clientError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? unAuthenticated,
  }) {
    return clientError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientError<T> value) clientError,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(UnAuthenticated<T> value) unAuthenticated,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientError<T> value)? clientError,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(UnAuthenticated<T> value)? unAuthenticated,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientError<T> value)? clientError,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(UnAuthenticated<T> value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class ClientError<T> implements ApiFailure<T> {
  const factory ClientError() = _$ClientError<T>;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<T, $Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError<T> value, $Res Function(_$ServerError<T>) then) =
      __$$ServerErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<T, $Res>
    extends _$ApiFailureCopyWithImpl<T, $Res, _$ServerError<T>>
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
    return 'ApiFailure<$T>.serverError()';
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
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() unAuthenticated,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? unAuthenticated,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? unAuthenticated,
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
    required TResult Function(ClientError<T> value) clientError,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(UnAuthenticated<T> value) unAuthenticated,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientError<T> value)? clientError,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(UnAuthenticated<T> value)? unAuthenticated,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientError<T> value)? clientError,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(UnAuthenticated<T> value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements ApiFailure<T> {
  const factory ServerError() = _$ServerError<T>;
}

/// @nodoc
abstract class _$$UnAuthenticatedCopyWith<T, $Res> {
  factory _$$UnAuthenticatedCopyWith(_$UnAuthenticated<T> value,
          $Res Function(_$UnAuthenticated<T>) then) =
      __$$UnAuthenticatedCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$UnAuthenticatedCopyWithImpl<T, $Res>
    extends _$ApiFailureCopyWithImpl<T, $Res, _$UnAuthenticated<T>>
    implements _$$UnAuthenticatedCopyWith<T, $Res> {
  __$$UnAuthenticatedCopyWithImpl(
      _$UnAuthenticated<T> _value, $Res Function(_$UnAuthenticated<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticated<T> implements UnAuthenticated<T> {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'ApiFailure<$T>.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticated<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientError,
    required TResult Function() serverError,
    required TResult Function() unAuthenticated,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientError,
    TResult? Function()? serverError,
    TResult? Function()? unAuthenticated,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientError,
    TResult Function()? serverError,
    TResult Function()? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClientError<T> value) clientError,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(UnAuthenticated<T> value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ClientError<T> value)? clientError,
    TResult? Function(ServerError<T> value)? serverError,
    TResult? Function(UnAuthenticated<T> value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClientError<T> value)? clientError,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(UnAuthenticated<T> value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated<T> implements ApiFailure<T> {
  const factory UnAuthenticated() = _$UnAuthenticated<T>;
}
