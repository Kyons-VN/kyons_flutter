// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_exercise_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonExerciseState {
  bool get loading => throw _privateConstructorUsedError;
  Option<TestContent> get content => throw _privateConstructorUsedError;
  Option<Map<String, String>> get answersResult =>
      throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  Option<int> get currentQuestionIndex => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Option<TestResult> get testResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonExerciseStateCopyWith<LessonExerciseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonExerciseStateCopyWith<$Res> {
  factory $LessonExerciseStateCopyWith(
          LessonExerciseState value, $Res Function(LessonExerciseState) then) =
      _$LessonExerciseStateCopyWithImpl<$Res, LessonExerciseState>;
  @useResult
  $Res call(
      {bool loading,
      Option<TestContent> content,
      Option<Map<String, String>> answersResult,
      int progress,
      Option<int> currentQuestionIndex,
      bool isSubmitted,
      bool hasError,
      Option<TestResult> testResult});
}

/// @nodoc
class _$LessonExerciseStateCopyWithImpl<$Res, $Val extends LessonExerciseState>
    implements $LessonExerciseStateCopyWith<$Res> {
  _$LessonExerciseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? content = null,
    Object? answersResult = null,
    Object? progress = null,
    Object? currentQuestionIndex = null,
    Object? isSubmitted = null,
    Object? hasError = null,
    Object? testResult = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Option<TestContent>,
      answersResult: null == answersResult
          ? _value.answersResult
          : answersResult // ignore: cast_nullable_to_non_nullable
              as Option<Map<String, String>>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      testResult: null == testResult
          ? _value.testResult
          : testResult // ignore: cast_nullable_to_non_nullable
              as Option<TestResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonExerciseStateImplCopyWith<$Res>
    implements $LessonExerciseStateCopyWith<$Res> {
  factory _$$LessonExerciseStateImplCopyWith(_$LessonExerciseStateImpl value,
          $Res Function(_$LessonExerciseStateImpl) then) =
      __$$LessonExerciseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      Option<TestContent> content,
      Option<Map<String, String>> answersResult,
      int progress,
      Option<int> currentQuestionIndex,
      bool isSubmitted,
      bool hasError,
      Option<TestResult> testResult});
}

/// @nodoc
class __$$LessonExerciseStateImplCopyWithImpl<$Res>
    extends _$LessonExerciseStateCopyWithImpl<$Res, _$LessonExerciseStateImpl>
    implements _$$LessonExerciseStateImplCopyWith<$Res> {
  __$$LessonExerciseStateImplCopyWithImpl(_$LessonExerciseStateImpl _value,
      $Res Function(_$LessonExerciseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? content = null,
    Object? answersResult = null,
    Object? progress = null,
    Object? currentQuestionIndex = null,
    Object? isSubmitted = null,
    Object? hasError = null,
    Object? testResult = null,
  }) {
    return _then(_$LessonExerciseStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Option<TestContent>,
      answersResult: null == answersResult
          ? _value.answersResult
          : answersResult // ignore: cast_nullable_to_non_nullable
              as Option<Map<String, String>>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      currentQuestionIndex: null == currentQuestionIndex
          ? _value.currentQuestionIndex
          : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      testResult: null == testResult
          ? _value.testResult
          : testResult // ignore: cast_nullable_to_non_nullable
              as Option<TestResult>,
    ));
  }
}

/// @nodoc

class _$LessonExerciseStateImpl implements _LessonExerciseState {
  const _$LessonExerciseStateImpl(
      {required this.loading,
      required this.content,
      required this.answersResult,
      required this.progress,
      required this.currentQuestionIndex,
      required this.isSubmitted,
      required this.hasError,
      required this.testResult});

  @override
  final bool loading;
  @override
  final Option<TestContent> content;
  @override
  final Option<Map<String, String>> answersResult;
  @override
  final int progress;
  @override
  final Option<int> currentQuestionIndex;
  @override
  final bool isSubmitted;
  @override
  final bool hasError;
  @override
  final Option<TestResult> testResult;

  @override
  String toString() {
    return 'LessonExerciseState(loading: $loading, content: $content, answersResult: $answersResult, progress: $progress, currentQuestionIndex: $currentQuestionIndex, isSubmitted: $isSubmitted, hasError: $hasError, testResult: $testResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonExerciseStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answersResult, answersResult) ||
                other.answersResult == answersResult) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.currentQuestionIndex, currentQuestionIndex) ||
                other.currentQuestionIndex == currentQuestionIndex) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.testResult, testResult) ||
                other.testResult == testResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, content, answersResult,
      progress, currentQuestionIndex, isSubmitted, hasError, testResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonExerciseStateImplCopyWith<_$LessonExerciseStateImpl> get copyWith =>
      __$$LessonExerciseStateImplCopyWithImpl<_$LessonExerciseStateImpl>(
          this, _$identity);
}

abstract class _LessonExerciseState implements LessonExerciseState {
  const factory _LessonExerciseState(
          {required final bool loading,
          required final Option<TestContent> content,
          required final Option<Map<String, String>> answersResult,
          required final int progress,
          required final Option<int> currentQuestionIndex,
          required final bool isSubmitted,
          required final bool hasError,
          required final Option<TestResult> testResult}) =
      _$LessonExerciseStateImpl;

  @override
  bool get loading;
  @override
  Option<TestContent> get content;
  @override
  Option<Map<String, String>> get answersResult;
  @override
  int get progress;
  @override
  Option<int> get currentQuestionIndex;
  @override
  bool get isSubmitted;
  @override
  bool get hasError;
  @override
  Option<TestResult> get testResult;
  @override
  @JsonKey(ignore: true)
  _$$LessonExerciseStateImplCopyWith<_$LessonExerciseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
