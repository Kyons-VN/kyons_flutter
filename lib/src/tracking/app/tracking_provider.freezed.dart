// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tracking_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrackingState {
  int get onAppTimer => throw _privateConstructorUsedError;
  Option<int> get onLessonTimer => throw _privateConstructorUsedError;
  Option<String> get lessonId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrackingStateCopyWith<TrackingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingStateCopyWith<$Res> {
  factory $TrackingStateCopyWith(
          TrackingState value, $Res Function(TrackingState) then) =
      _$TrackingStateCopyWithImpl<$Res>;
  $Res call(
      {int onAppTimer, Option<int> onLessonTimer, Option<String> lessonId});
}

/// @nodoc
class _$TrackingStateCopyWithImpl<$Res>
    implements $TrackingStateCopyWith<$Res> {
  _$TrackingStateCopyWithImpl(this._value, this._then);

  final TrackingState _value;
  // ignore: unused_field
  final $Res Function(TrackingState) _then;

  @override
  $Res call({
    Object? onAppTimer = freezed,
    Object? onLessonTimer = freezed,
    Object? lessonId = freezed,
  }) {
    return _then(_value.copyWith(
      onAppTimer: onAppTimer == freezed
          ? _value.onAppTimer
          : onAppTimer // ignore: cast_nullable_to_non_nullable
              as int,
      onLessonTimer: onLessonTimer == freezed
          ? _value.onLessonTimer
          : onLessonTimer // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      lessonId: lessonId == freezed
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_TrackingStateCopyWith<$Res>
    implements $TrackingStateCopyWith<$Res> {
  factory _$$_TrackingStateCopyWith(
          _$_TrackingState value, $Res Function(_$_TrackingState) then) =
      __$$_TrackingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int onAppTimer, Option<int> onLessonTimer, Option<String> lessonId});
}

/// @nodoc
class __$$_TrackingStateCopyWithImpl<$Res>
    extends _$TrackingStateCopyWithImpl<$Res>
    implements _$$_TrackingStateCopyWith<$Res> {
  __$$_TrackingStateCopyWithImpl(
      _$_TrackingState _value, $Res Function(_$_TrackingState) _then)
      : super(_value, (v) => _then(v as _$_TrackingState));

  @override
  _$_TrackingState get _value => super._value as _$_TrackingState;

  @override
  $Res call({
    Object? onAppTimer = freezed,
    Object? onLessonTimer = freezed,
    Object? lessonId = freezed,
  }) {
    return _then(_$_TrackingState(
      onAppTimer: onAppTimer == freezed
          ? _value.onAppTimer
          : onAppTimer // ignore: cast_nullable_to_non_nullable
              as int,
      onLessonTimer: onLessonTimer == freezed
          ? _value.onLessonTimer
          : onLessonTimer // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      lessonId: lessonId == freezed
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_TrackingState implements _TrackingState {
  const _$_TrackingState(
      {required this.onAppTimer,
      required this.onLessonTimer,
      required this.lessonId});

  @override
  final int onAppTimer;
  @override
  final Option<int> onLessonTimer;
  @override
  final Option<String> lessonId;

  @override
  String toString() {
    return 'TrackingState(onAppTimer: $onAppTimer, onLessonTimer: $onLessonTimer, lessonId: $lessonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrackingState &&
            const DeepCollectionEquality()
                .equals(other.onAppTimer, onAppTimer) &&
            const DeepCollectionEquality()
                .equals(other.onLessonTimer, onLessonTimer) &&
            const DeepCollectionEquality().equals(other.lessonId, lessonId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(onAppTimer),
      const DeepCollectionEquality().hash(onLessonTimer),
      const DeepCollectionEquality().hash(lessonId));

  @JsonKey(ignore: true)
  @override
  _$$_TrackingStateCopyWith<_$_TrackingState> get copyWith =>
      __$$_TrackingStateCopyWithImpl<_$_TrackingState>(this, _$identity);
}

abstract class _TrackingState implements TrackingState {
  const factory _TrackingState(
      {required final int onAppTimer,
      required final Option<int> onLessonTimer,
      required final Option<String> lessonId}) = _$_TrackingState;

  @override
  int get onAppTimer;
  @override
  Option<int> get onLessonTimer;
  @override
  Option<String> get lessonId;
  @override
  @JsonKey(ignore: true)
  _$$_TrackingStateCopyWith<_$_TrackingState> get copyWith =>
      throw _privateConstructorUsedError;
}
