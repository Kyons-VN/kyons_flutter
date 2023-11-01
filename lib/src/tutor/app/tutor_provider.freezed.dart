// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$TutorStateCopyWithImpl<$Res, TutorState>;
  @useResult
  $Res call(
      {Option<String> sessionId,
      Option<TutorSessionStatus> sessionStatus,
      bool loading,
      bool hasError});
}

/// @nodoc
class _$TutorStateCopyWithImpl<$Res, $Val extends TutorState>
    implements $TutorStateCopyWith<$Res> {
  _$TutorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? sessionStatus = null,
    Object? loading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      sessionStatus: null == sessionStatus
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as Option<TutorSessionStatus>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TutorStateImplCopyWith<$Res>
    implements $TutorStateCopyWith<$Res> {
  factory _$$TutorStateImplCopyWith(
          _$TutorStateImpl value, $Res Function(_$TutorStateImpl) then) =
      __$$TutorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<String> sessionId,
      Option<TutorSessionStatus> sessionStatus,
      bool loading,
      bool hasError});
}

/// @nodoc
class __$$TutorStateImplCopyWithImpl<$Res>
    extends _$TutorStateCopyWithImpl<$Res, _$TutorStateImpl>
    implements _$$TutorStateImplCopyWith<$Res> {
  __$$TutorStateImplCopyWithImpl(
      _$TutorStateImpl _value, $Res Function(_$TutorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? sessionStatus = null,
    Object? loading = null,
    Object? hasError = null,
  }) {
    return _then(_$TutorStateImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      sessionStatus: null == sessionStatus
          ? _value.sessionStatus
          : sessionStatus // ignore: cast_nullable_to_non_nullable
              as Option<TutorSessionStatus>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TutorStateImpl implements _TutorState {
  const _$TutorStateImpl(
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
            other is _$TutorStateImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.sessionStatus, sessionStatus) ||
                other.sessionStatus == sessionStatus) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionId, sessionStatus, loading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TutorStateImplCopyWith<_$TutorStateImpl> get copyWith =>
      __$$TutorStateImplCopyWithImpl<_$TutorStateImpl>(this, _$identity);
}

abstract class _TutorState implements TutorState {
  const factory _TutorState(
      {required final Option<String> sessionId,
      required final Option<TutorSessionStatus> sessionStatus,
      required final bool loading,
      required final bool hasError}) = _$TutorStateImpl;

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
  _$$TutorStateImplCopyWith<_$TutorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
