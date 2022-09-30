// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TutorState {
  Option<String> get sessionId => throw _privateConstructorUsedError;
  Option<TutorSessionStatus> get sessionStatus =>
      throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TutorStateCopyWith<TutorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorStateCopyWith<$Res> {
  factory $TutorStateCopyWith(
          TutorState value, $Res Function(TutorState) then) =
      _$TutorStateCopyWithImpl<$Res>;
  $Res call(
      {Option<String> sessionId,
      Option<TutorSessionStatus> sessionStatus,
      bool loading,
      bool hasError});
}

/// @nodoc
class _$TutorStateCopyWithImpl<$Res> implements $TutorStateCopyWith<$Res> {
  _$TutorStateCopyWithImpl(this._value, this._then);

  final TutorState _value;
  // ignore: unused_field
  final $Res Function(TutorState) _then;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? sessionStatus = freezed,
    Object? loading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as Option<TutorSessionStatus>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TutorStateCopyWith<$Res>
    implements $TutorStateCopyWith<$Res> {
  factory _$$_TutorStateCopyWith(
          _$_TutorState value, $Res Function(_$_TutorState) then) =
      __$$_TutorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<String> sessionId,
      Option<TutorSessionStatus> sessionStatus,
      bool loading,
      bool hasError});
}

/// @nodoc
class __$$_TutorStateCopyWithImpl<$Res> extends _$TutorStateCopyWithImpl<$Res>
    implements _$$_TutorStateCopyWith<$Res> {
  __$$_TutorStateCopyWithImpl(
      _$_TutorState _value, $Res Function(_$_TutorState) _then)
      : super(_value, (v) => _then(v as _$_TutorState));

  @override
  _$_TutorState get _value => super._value as _$_TutorState;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? sessionStatus = freezed,
    Object? loading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_$_TutorState(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      sessionStatus: sessionStatus == freezed
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as Option<TutorSessionStatus>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TutorState implements _TutorState {
  const _$_TutorState(
      {required this.sessionId,
      required this.sessionStatus,
      required this.loading,
      required this.hasError});

  @override
  final Option<String> sessionId;
  @override
  final Option<TutorSessionStatus> sessionStatus;
  @override
  final bool loading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'TutorState(sessionId: $sessionId, sessionStatus: $sessionStatus, loading: $loading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TutorState &&
            const DeepCollectionEquality().equals(other.sessionId, sessionId) &&
            const DeepCollectionEquality()
                .equals(other.sessionStatus, sessionStatus) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sessionId),
      const DeepCollectionEquality().hash(sessionStatus),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$$_TutorStateCopyWith<_$_TutorState> get copyWith =>
      __$$_TutorStateCopyWithImpl<_$_TutorState>(this, _$identity);
}

abstract class _TutorState implements TutorState {
  const factory _TutorState(
      {required final Option<String> sessionId,
      required final Option<TutorSessionStatus> sessionStatus,
      required final bool loading,
      required final bool hasError}) = _$_TutorState;

  @override
  Option<String> get sessionId;
  @override
  Option<TutorSessionStatus> get sessionStatus;
  @override
  bool get loading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_TutorStateCopyWith<_$_TutorState> get copyWith =>
      throw _privateConstructorUsedError;
}
