// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonState {
  Option<LessonGroup> get lessonGroup => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonStateCopyWith<LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res>;
  $Res call({Option<LessonGroup> lessonGroup, bool loading, bool hasError});
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res> implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  final LessonState _value;
  // ignore: unused_field
  final $Res Function(LessonState) _then;

  @override
  $Res call({
    Object? lessonGroup = freezed,
    Object? loading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      lessonGroup: lessonGroup == freezed
          ? _value.lessonGroup
          : lessonGroup // ignore: cast_nullable_to_non_nullable
              as Option<LessonGroup>,
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
abstract class _$$_LessonStateCopyWith<$Res>
    implements $LessonStateCopyWith<$Res> {
  factory _$$_LessonStateCopyWith(
          _$_LessonState value, $Res Function(_$_LessonState) then) =
      __$$_LessonStateCopyWithImpl<$Res>;
  @override
  $Res call({Option<LessonGroup> lessonGroup, bool loading, bool hasError});
}

/// @nodoc
class __$$_LessonStateCopyWithImpl<$Res> extends _$LessonStateCopyWithImpl<$Res>
    implements _$$_LessonStateCopyWith<$Res> {
  __$$_LessonStateCopyWithImpl(
      _$_LessonState _value, $Res Function(_$_LessonState) _then)
      : super(_value, (v) => _then(v as _$_LessonState));

  @override
  _$_LessonState get _value => super._value as _$_LessonState;

  @override
  $Res call({
    Object? lessonGroup = freezed,
    Object? loading = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_$_LessonState(
      lessonGroup: lessonGroup == freezed
          ? _value.lessonGroup
          : lessonGroup // ignore: cast_nullable_to_non_nullable
              as Option<LessonGroup>,
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

class _$_LessonState implements _LessonState {
  const _$_LessonState(
      {required this.lessonGroup,
      required this.loading,
      required this.hasError});

  @override
  final Option<LessonGroup> lessonGroup;
  @override
  final bool loading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'LessonState(lessonGroup: $lessonGroup, loading: $loading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonState &&
            const DeepCollectionEquality()
                .equals(other.lessonGroup, lessonGroup) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lessonGroup),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$$_LessonStateCopyWith<_$_LessonState> get copyWith =>
      __$$_LessonStateCopyWithImpl<_$_LessonState>(this, _$identity);
}

abstract class _LessonState implements LessonState {
  const factory _LessonState(
      {required final Option<LessonGroup> lessonGroup,
      required final bool loading,
      required final bool hasError}) = _$_LessonState;

  @override
  Option<LessonGroup> get lessonGroup => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LessonStateCopyWith<_$_LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonStudyState {
  int get selectedLessonIndex => throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;
  String get selectedLessonId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonStudyStateCopyWith<LessonStudyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStudyStateCopyWith<$Res> {
  factory $LessonStudyStateCopyWith(
          LessonStudyState value, $Res Function(LessonStudyState) then) =
      _$LessonStudyStateCopyWithImpl<$Res>;
  $Res call(
      {int selectedLessonIndex, int selectedTabIndex, String selectedLessonId});
}

/// @nodoc
class _$LessonStudyStateCopyWithImpl<$Res>
    implements $LessonStudyStateCopyWith<$Res> {
  _$LessonStudyStateCopyWithImpl(this._value, this._then);

  final LessonStudyState _value;
  // ignore: unused_field
  final $Res Function(LessonStudyState) _then;

  @override
  $Res call({
    Object? selectedLessonIndex = freezed,
    Object? selectedTabIndex = freezed,
    Object? selectedLessonId = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLessonIndex: selectedLessonIndex == freezed
          ? _value.selectedLessonIndex
          : selectedLessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLessonId: selectedLessonId == freezed
          ? _value.selectedLessonId
          : selectedLessonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonStudyStateCopyWith<$Res>
    implements $LessonStudyStateCopyWith<$Res> {
  factory _$$_LessonStudyStateCopyWith(
          _$_LessonStudyState value, $Res Function(_$_LessonStudyState) then) =
      __$$_LessonStudyStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedLessonIndex, int selectedTabIndex, String selectedLessonId});
}

/// @nodoc
class __$$_LessonStudyStateCopyWithImpl<$Res>
    extends _$LessonStudyStateCopyWithImpl<$Res>
    implements _$$_LessonStudyStateCopyWith<$Res> {
  __$$_LessonStudyStateCopyWithImpl(
      _$_LessonStudyState _value, $Res Function(_$_LessonStudyState) _then)
      : super(_value, (v) => _then(v as _$_LessonStudyState));

  @override
  _$_LessonStudyState get _value => super._value as _$_LessonStudyState;

  @override
  $Res call({
    Object? selectedLessonIndex = freezed,
    Object? selectedTabIndex = freezed,
    Object? selectedLessonId = freezed,
  }) {
    return _then(_$_LessonStudyState(
      selectedLessonIndex: selectedLessonIndex == freezed
          ? _value.selectedLessonIndex
          : selectedLessonIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTabIndex: selectedTabIndex == freezed
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLessonId: selectedLessonId == freezed
          ? _value.selectedLessonId
          : selectedLessonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LessonStudyState implements _LessonStudyState {
  const _$_LessonStudyState(
      {required this.selectedLessonIndex,
      required this.selectedTabIndex,
      required this.selectedLessonId});

  @override
  final int selectedLessonIndex;
  @override
  final int selectedTabIndex;
  @override
  final String selectedLessonId;

  @override
  String toString() {
    return 'LessonStudyState(selectedLessonIndex: $selectedLessonIndex, selectedTabIndex: $selectedTabIndex, selectedLessonId: $selectedLessonId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonStudyState &&
            const DeepCollectionEquality()
                .equals(other.selectedLessonIndex, selectedLessonIndex) &&
            const DeepCollectionEquality()
                .equals(other.selectedTabIndex, selectedTabIndex) &&
            const DeepCollectionEquality()
                .equals(other.selectedLessonId, selectedLessonId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedLessonIndex),
      const DeepCollectionEquality().hash(selectedTabIndex),
      const DeepCollectionEquality().hash(selectedLessonId));

  @JsonKey(ignore: true)
  @override
  _$$_LessonStudyStateCopyWith<_$_LessonStudyState> get copyWith =>
      __$$_LessonStudyStateCopyWithImpl<_$_LessonStudyState>(this, _$identity);
}

abstract class _LessonStudyState implements LessonStudyState {
  const factory _LessonStudyState(
      {required final int selectedLessonIndex,
      required final int selectedTabIndex,
      required final String selectedLessonId}) = _$_LessonStudyState;

  @override
  int get selectedLessonIndex => throw _privateConstructorUsedError;
  @override
  int get selectedTabIndex => throw _privateConstructorUsedError;
  @override
  String get selectedLessonId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LessonStudyStateCopyWith<_$_LessonStudyState> get copyWith =>
      throw _privateConstructorUsedError;
}
