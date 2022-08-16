// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_lesson_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewLessonState {
  bool get loading => throw _privateConstructorUsedError;
  Option<List<LearningPoint>> get learningPoints =>
      throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<String> get selectedIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewLessonStateCopyWith<NewLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewLessonStateCopyWith<$Res> {
  factory $NewLessonStateCopyWith(
          NewLessonState value, $Res Function(NewLessonState) then) =
      _$NewLessonStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<List<LearningPoint>> learningPoints,
      bool hasError,
      List<String> selectedIds});
}

/// @nodoc
class _$NewLessonStateCopyWithImpl<$Res>
    implements $NewLessonStateCopyWith<$Res> {
  _$NewLessonStateCopyWithImpl(this._value, this._then);

  final NewLessonState _value;
  // ignore: unused_field
  final $Res Function(NewLessonState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? learningPoints = freezed,
    Object? hasError = freezed,
    Object? selectedIds = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPoints: learningPoints == freezed
          ? _value.learningPoints
          : learningPoints // ignore: cast_nullable_to_non_nullable
              as Option<List<LearningPoint>>,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIds: selectedIds == freezed
          ? _value.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_NewLessonStateCopyWith<$Res>
    implements $NewLessonStateCopyWith<$Res> {
  factory _$$_NewLessonStateCopyWith(
          _$_NewLessonState value, $Res Function(_$_NewLessonState) then) =
      __$$_NewLessonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<List<LearningPoint>> learningPoints,
      bool hasError,
      List<String> selectedIds});
}

/// @nodoc
class __$$_NewLessonStateCopyWithImpl<$Res>
    extends _$NewLessonStateCopyWithImpl<$Res>
    implements _$$_NewLessonStateCopyWith<$Res> {
  __$$_NewLessonStateCopyWithImpl(
      _$_NewLessonState _value, $Res Function(_$_NewLessonState) _then)
      : super(_value, (v) => _then(v as _$_NewLessonState));

  @override
  _$_NewLessonState get _value => super._value as _$_NewLessonState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? learningPoints = freezed,
    Object? hasError = freezed,
    Object? selectedIds = freezed,
  }) {
    return _then(_$_NewLessonState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPoints: learningPoints == freezed
          ? _value.learningPoints
          : learningPoints // ignore: cast_nullable_to_non_nullable
              as Option<List<LearningPoint>>,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIds: selectedIds == freezed
          ? _value._selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_NewLessonState implements _NewLessonState {
  const _$_NewLessonState(
      {required this.loading,
      required this.learningPoints,
      required this.hasError,
      required final List<String> selectedIds})
      : _selectedIds = selectedIds;

  @override
  final bool loading;
  @override
  final Option<List<LearningPoint>> learningPoints;
  @override
  final bool hasError;
  final List<String> _selectedIds;
  @override
  List<String> get selectedIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIds);
  }

  @override
  String toString() {
    return 'NewLessonState(loading: $loading, learningPoints: $learningPoints, hasError: $hasError, selectedIds: $selectedIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewLessonState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.learningPoints, learningPoints) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other._selectedIds, _selectedIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(learningPoints),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(_selectedIds));

  @JsonKey(ignore: true)
  @override
  _$$_NewLessonStateCopyWith<_$_NewLessonState> get copyWith =>
      __$$_NewLessonStateCopyWithImpl<_$_NewLessonState>(this, _$identity);
}

abstract class _NewLessonState implements NewLessonState {
  const factory _NewLessonState(
      {required final bool loading,
      required final Option<List<LearningPoint>> learningPoints,
      required final bool hasError,
      required final List<String> selectedIds}) = _$_NewLessonState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<List<LearningPoint>> get learningPoints =>
      throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  List<String> get selectedIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NewLessonStateCopyWith<_$_NewLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}
