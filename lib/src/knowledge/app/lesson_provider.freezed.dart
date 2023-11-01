// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Program> get selectedProgram => throw _privateConstructorUsedError;
  Option<ApiFailure> get apiError => throw _privateConstructorUsedError;
  Option<ClientFailure> get clientError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonStateCopyWith<LessonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStateCopyWith<$Res> {
  factory $LessonStateCopyWith(
          LessonState value, $Res Function(LessonState) then) =
      _$LessonStateCopyWithImpl<$Res, LessonState>;
  @useResult
  $Res call(
      {Option<LessonGroup> lessonGroup,
      bool isLoading,
      Option<Program> selectedProgram,
      Option<ApiFailure> apiError,
      Option<ClientFailure> clientError});
}

/// @nodoc
class _$LessonStateCopyWithImpl<$Res, $Val extends LessonState>
    implements $LessonStateCopyWith<$Res> {
  _$LessonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonGroup = null,
    Object? isLoading = null,
    Object? selectedProgram = null,
    Object? apiError = null,
    Object? clientError = null,
  }) {
    return _then(_value.copyWith(
      lessonGroup: null == lessonGroup
          ? _value.lessonGroup
          : lessonGroup // ignore: cast_nullable_to_non_nullable
              as Option<LessonGroup>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProgram: null == selectedProgram
          ? _value.selectedProgram
          : selectedProgram // ignore: cast_nullable_to_non_nullable
              as Option<Program>,
      apiError: null == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      clientError: null == clientError
          ? _value.clientError
          : clientError // ignore: cast_nullable_to_non_nullable
              as Option<ClientFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonStateImplCopyWith<$Res>
    implements $LessonStateCopyWith<$Res> {
  factory _$$LessonStateImplCopyWith(
          _$LessonStateImpl value, $Res Function(_$LessonStateImpl) then) =
      __$$LessonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<LessonGroup> lessonGroup,
      bool isLoading,
      Option<Program> selectedProgram,
      Option<ApiFailure> apiError,
      Option<ClientFailure> clientError});
}

/// @nodoc
class __$$LessonStateImplCopyWithImpl<$Res>
    extends _$LessonStateCopyWithImpl<$Res, _$LessonStateImpl>
    implements _$$LessonStateImplCopyWith<$Res> {
  __$$LessonStateImplCopyWithImpl(
      _$LessonStateImpl _value, $Res Function(_$LessonStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonGroup = null,
    Object? isLoading = null,
    Object? selectedProgram = null,
    Object? apiError = null,
    Object? clientError = null,
  }) {
    return _then(_$LessonStateImpl(
      lessonGroup: null == lessonGroup
          ? _value.lessonGroup
          : lessonGroup // ignore: cast_nullable_to_non_nullable
              as Option<LessonGroup>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProgram: null == selectedProgram
          ? _value.selectedProgram
          : selectedProgram // ignore: cast_nullable_to_non_nullable
              as Option<Program>,
      apiError: null == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      clientError: null == clientError
          ? _value.clientError
          : clientError // ignore: cast_nullable_to_non_nullable
              as Option<ClientFailure>,
    ));
  }
}

/// @nodoc

class _$LessonStateImpl implements _LessonState {
  const _$LessonStateImpl(
      {required this.lessonGroup,
      required this.isLoading,
      required this.selectedProgram,
      required this.apiError,
      required this.clientError});

  @override
  final Option<LessonGroup> lessonGroup;
  @override
  final bool isLoading;
  @override
  final Option<Program> selectedProgram;
  @override
  final Option<ApiFailure> apiError;
  @override
  final Option<ClientFailure> clientError;

  @override
  String toString() {
    return 'LessonState(lessonGroup: $lessonGroup, isLoading: $isLoading, selectedProgram: $selectedProgram, apiError: $apiError, clientError: $clientError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStateImpl &&
            (identical(other.lessonGroup, lessonGroup) ||
                other.lessonGroup == lessonGroup) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.selectedProgram, selectedProgram) ||
                other.selectedProgram == selectedProgram) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.clientError, clientError) ||
                other.clientError == clientError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonGroup, isLoading,
      selectedProgram, apiError, clientError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStateImplCopyWith<_$LessonStateImpl> get copyWith =>
      __$$LessonStateImplCopyWithImpl<_$LessonStateImpl>(this, _$identity);
}

abstract class _LessonState implements LessonState {
  const factory _LessonState(
      {required final Option<LessonGroup> lessonGroup,
      required final bool isLoading,
      required final Option<Program> selectedProgram,
      required final Option<ApiFailure> apiError,
      required final Option<ClientFailure> clientError}) = _$LessonStateImpl;

  @override
  Option<LessonGroup> get lessonGroup;
  @override
  bool get isLoading;
  @override
  Option<Program> get selectedProgram;
  @override
  Option<ApiFailure> get apiError;
  @override
  Option<ClientFailure> get clientError;
  @override
  @JsonKey(ignore: true)
  _$$LessonStateImplCopyWith<_$LessonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LessonStudyState {
  TabMenu get selectedTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonStudyStateCopyWith<LessonStudyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStudyStateCopyWith<$Res> {
  factory $LessonStudyStateCopyWith(
          LessonStudyState value, $Res Function(LessonStudyState) then) =
      _$LessonStudyStateCopyWithImpl<$Res, LessonStudyState>;
  @useResult
  $Res call({TabMenu selectedTabIndex});
}

/// @nodoc
class _$LessonStudyStateCopyWithImpl<$Res, $Val extends LessonStudyState>
    implements $LessonStudyStateCopyWith<$Res> {
  _$LessonStudyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as TabMenu,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonStudyStateImplCopyWith<$Res>
    implements $LessonStudyStateCopyWith<$Res> {
  factory _$$LessonStudyStateImplCopyWith(_$LessonStudyStateImpl value,
          $Res Function(_$LessonStudyStateImpl) then) =
      __$$LessonStudyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TabMenu selectedTabIndex});
}

/// @nodoc
class __$$LessonStudyStateImplCopyWithImpl<$Res>
    extends _$LessonStudyStateCopyWithImpl<$Res, _$LessonStudyStateImpl>
    implements _$$LessonStudyStateImplCopyWith<$Res> {
  __$$LessonStudyStateImplCopyWithImpl(_$LessonStudyStateImpl _value,
      $Res Function(_$LessonStudyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
  }) {
    return _then(_$LessonStudyStateImpl(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as TabMenu,
    ));
  }
}

/// @nodoc

class _$LessonStudyStateImpl implements _LessonStudyState {
  const _$LessonStudyStateImpl({required this.selectedTabIndex});

  @override
  final TabMenu selectedTabIndex;

  @override
  String toString() {
    return 'LessonStudyState(selectedTabIndex: $selectedTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStudyStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStudyStateImplCopyWith<_$LessonStudyStateImpl> get copyWith =>
      __$$LessonStudyStateImplCopyWithImpl<_$LessonStudyStateImpl>(
          this, _$identity);
}

abstract class _LessonStudyState implements LessonStudyState {
  const factory _LessonStudyState({required final TabMenu selectedTabIndex}) =
      _$LessonStudyStateImpl;

  @override
  TabMenu get selectedTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$LessonStudyStateImplCopyWith<_$LessonStudyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
