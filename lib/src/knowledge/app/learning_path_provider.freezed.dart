// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'learning_path_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningPathState {
  bool get loading => throw _privateConstructorUsedError;
  Option<LearningPath> get learningPath => throw _privateConstructorUsedError;
  bool get missingProgram => throw _privateConstructorUsedError;
  Option<ApiFailure> get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningPathStateCopyWith<LearningPathState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathStateCopyWith<$Res> {
  factory $LearningPathStateCopyWith(
          LearningPathState value, $Res Function(LearningPathState) then) =
      _$LearningPathStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<LearningPath> learningPath,
      bool missingProgram,
      Option<ApiFailure> error});
}

/// @nodoc
class _$LearningPathStateCopyWithImpl<$Res>
    implements $LearningPathStateCopyWith<$Res> {
  _$LearningPathStateCopyWithImpl(this._value, this._then);

  final LearningPathState _value;
  // ignore: unused_field
  final $Res Function(LearningPathState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? learningPath = freezed,
    Object? missingProgram = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPath: learningPath == freezed
          ? _value.learningPath
          : learningPath // ignore: cast_nullable_to_non_nullable
              as Option<LearningPath>,
      missingProgram: missingProgram == freezed
          ? _value.missingProgram
          : missingProgram // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_LearningPathStateCopyWith<$Res>
    implements $LearningPathStateCopyWith<$Res> {
  factory _$$_LearningPathStateCopyWith(_$_LearningPathState value,
          $Res Function(_$_LearningPathState) then) =
      __$$_LearningPathStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<LearningPath> learningPath,
      bool missingProgram,
      Option<ApiFailure> error});
}

/// @nodoc
class __$$_LearningPathStateCopyWithImpl<$Res>
    extends _$LearningPathStateCopyWithImpl<$Res>
    implements _$$_LearningPathStateCopyWith<$Res> {
  __$$_LearningPathStateCopyWithImpl(
      _$_LearningPathState _value, $Res Function(_$_LearningPathState) _then)
      : super(_value, (v) => _then(v as _$_LearningPathState));

  @override
  _$_LearningPathState get _value => super._value as _$_LearningPathState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? learningPath = freezed,
    Object? missingProgram = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_LearningPathState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPath: learningPath == freezed
          ? _value.learningPath
          : learningPath // ignore: cast_nullable_to_non_nullable
              as Option<LearningPath>,
      missingProgram: missingProgram == freezed
          ? _value.missingProgram
          : missingProgram // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
    ));
  }
}

/// @nodoc

class _$_LearningPathState implements _LearningPathState {
  const _$_LearningPathState(
      {required this.loading,
      required this.learningPath,
      required this.missingProgram,
      required this.error});

  @override
  final bool loading;
  @override
  final Option<LearningPath> learningPath;
  @override
  final bool missingProgram;
  @override
  final Option<ApiFailure> error;

  @override
  String toString() {
    return 'LearningPathState(loading: $loading, learningPath: $learningPath, missingProgram: $missingProgram, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.learningPath, learningPath) &&
            const DeepCollectionEquality()
                .equals(other.missingProgram, missingProgram) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(learningPath),
      const DeepCollectionEquality().hash(missingProgram),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_LearningPathStateCopyWith<_$_LearningPathState> get copyWith =>
      __$$_LearningPathStateCopyWithImpl<_$_LearningPathState>(
          this, _$identity);
}

abstract class _LearningPathState implements LearningPathState {
  const factory _LearningPathState(
      {required final bool loading,
      required final Option<LearningPath> learningPath,
      required final bool missingProgram,
      required final Option<ApiFailure> error}) = _$_LearningPathState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<LearningPath> get learningPath => throw _privateConstructorUsedError;
  @override
  bool get missingProgram => throw _privateConstructorUsedError;
  @override
  Option<ApiFailure> get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathStateCopyWith<_$_LearningPathState> get copyWith =>
      throw _privateConstructorUsedError;
}
