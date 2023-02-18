// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$LearningPathStateCopyWithImpl<$Res, LearningPathState>;
  @useResult
  $Res call(
      {bool loading,
      Option<LearningPath> learningPath,
      bool missingProgram,
      Option<ApiFailure> error});
}

/// @nodoc
class _$LearningPathStateCopyWithImpl<$Res, $Val extends LearningPathState>
    implements $LearningPathStateCopyWith<$Res> {
  _$LearningPathStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? learningPath = null,
    Object? missingProgram = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPath: null == learningPath
          ? _value.learningPath
          : learningPath // ignore: cast_nullable_to_non_nullable
              as Option<LearningPath>,
      missingProgram: null == missingProgram
          ? _value.missingProgram
          : missingProgram // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathStateCopyWith<$Res>
    implements $LearningPathStateCopyWith<$Res> {
  factory _$$_LearningPathStateCopyWith(_$_LearningPathState value,
          $Res Function(_$_LearningPathState) then) =
      __$$_LearningPathStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      Option<LearningPath> learningPath,
      bool missingProgram,
      Option<ApiFailure> error});
}

/// @nodoc
class __$$_LearningPathStateCopyWithImpl<$Res>
    extends _$LearningPathStateCopyWithImpl<$Res, _$_LearningPathState>
    implements _$$_LearningPathStateCopyWith<$Res> {
  __$$_LearningPathStateCopyWithImpl(
      _$_LearningPathState _value, $Res Function(_$_LearningPathState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? learningPath = null,
    Object? missingProgram = null,
    Object? error = null,
  }) {
    return _then(_$_LearningPathState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPath: null == learningPath
          ? _value.learningPath
          : learningPath // ignore: cast_nullable_to_non_nullable
              as Option<LearningPath>,
      missingProgram: null == missingProgram
          ? _value.missingProgram
          : missingProgram // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
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
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.learningPath, learningPath) ||
                other.learningPath == learningPath) &&
            (identical(other.missingProgram, missingProgram) ||
                other.missingProgram == missingProgram) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, learningPath, missingProgram, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  bool get loading;
  @override
  Option<LearningPath> get learningPath;
  @override
  bool get missingProgram;
  @override
  Option<ApiFailure> get error;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathStateCopyWith<_$_LearningPathState> get copyWith =>
      throw _privateConstructorUsedError;
}
