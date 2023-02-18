// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  bool get submitting => throw _privateConstructorUsedError;
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
      _$NewLessonStateCopyWithImpl<$Res, NewLessonState>;
  @useResult
  $Res call(
      {bool loading,
      bool submitting,
      Option<List<LearningPoint>> learningPoints,
      bool hasError,
      List<String> selectedIds});
}

/// @nodoc
class _$NewLessonStateCopyWithImpl<$Res, $Val extends NewLessonState>
    implements $NewLessonStateCopyWith<$Res> {
  _$NewLessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? submitting = null,
    Object? learningPoints = null,
    Object? hasError = null,
    Object? selectedIds = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      submitting: null == submitting
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPoints: null == learningPoints
          ? _value.learningPoints
          : learningPoints // ignore: cast_nullable_to_non_nullable
              as Option<List<LearningPoint>>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIds: null == selectedIds
          ? _value.selectedIds
          : selectedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewLessonStateCopyWith<$Res>
    implements $NewLessonStateCopyWith<$Res> {
  factory _$$_NewLessonStateCopyWith(
          _$_NewLessonState value, $Res Function(_$_NewLessonState) then) =
      __$$_NewLessonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool submitting,
      Option<List<LearningPoint>> learningPoints,
      bool hasError,
      List<String> selectedIds});
}

/// @nodoc
class __$$_NewLessonStateCopyWithImpl<$Res>
    extends _$NewLessonStateCopyWithImpl<$Res, _$_NewLessonState>
    implements _$$_NewLessonStateCopyWith<$Res> {
  __$$_NewLessonStateCopyWithImpl(
      _$_NewLessonState _value, $Res Function(_$_NewLessonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? submitting = null,
    Object? learningPoints = null,
    Object? hasError = null,
    Object? selectedIds = null,
  }) {
    return _then(_$_NewLessonState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      submitting: null == submitting
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      learningPoints: null == learningPoints
          ? _value.learningPoints
          : learningPoints // ignore: cast_nullable_to_non_nullable
              as Option<List<LearningPoint>>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIds: null == selectedIds
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
      required this.submitting,
      required this.learningPoints,
      required this.hasError,
      required final List<String> selectedIds})
      : _selectedIds = selectedIds;

  @override
  final bool loading;
  @override
  final bool submitting;
  @override
  final Option<List<LearningPoint>> learningPoints;
  @override
  final bool hasError;
  final List<String> _selectedIds;
  @override
  List<String> get selectedIds {
    if (_selectedIds is EqualUnmodifiableListView) return _selectedIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedIds);
  }

  @override
  String toString() {
    return 'NewLessonState(loading: $loading, submitting: $submitting, learningPoints: $learningPoints, hasError: $hasError, selectedIds: $selectedIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewLessonState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting) &&
            (identical(other.learningPoints, learningPoints) ||
                other.learningPoints == learningPoints) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality()
                .equals(other._selectedIds, _selectedIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      submitting,
      learningPoints,
      hasError,
      const DeepCollectionEquality().hash(_selectedIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewLessonStateCopyWith<_$_NewLessonState> get copyWith =>
      __$$_NewLessonStateCopyWithImpl<_$_NewLessonState>(this, _$identity);
}

abstract class _NewLessonState implements NewLessonState {
  const factory _NewLessonState(
      {required final bool loading,
      required final bool submitting,
      required final Option<List<LearningPoint>> learningPoints,
      required final bool hasError,
      required final List<String> selectedIds}) = _$_NewLessonState;

  @override
  bool get loading;
  @override
  bool get submitting;
  @override
  Option<List<LearningPoint>> get learningPoints;
  @override
  bool get hasError;
  @override
  List<String> get selectedIds;
  @override
  @JsonKey(ignore: true)
  _$$_NewLessonStateCopyWith<_$_NewLessonState> get copyWith =>
      throw _privateConstructorUsedError;
}
