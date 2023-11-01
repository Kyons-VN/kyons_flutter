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
  Option<LearningGoalPath> get learningGoalPathOption =>
      throw _privateConstructorUsedError;
  Option<StudentLearningGoal> get selectedLearningGoal =>
      throw _privateConstructorUsedError;
  Option<ApiFailure> get hasError => throw _privateConstructorUsedError;
  Option<List<MockTestItem>> get mockTestItemsOption =>
      throw _privateConstructorUsedError;
  int get selectedCat => throw _privateConstructorUsedError;
  bool get isMissing => throw _privateConstructorUsedError;

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
      Option<LearningGoalPath> learningGoalPathOption,
      Option<StudentLearningGoal> selectedLearningGoal,
      Option<ApiFailure> hasError,
      Option<List<MockTestItem>> mockTestItemsOption,
      int selectedCat,
      bool isMissing});
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
    Object? learningGoalPathOption = null,
    Object? selectedLearningGoal = null,
    Object? hasError = null,
    Object? mockTestItemsOption = null,
    Object? selectedCat = null,
    Object? isMissing = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningGoalPathOption: null == learningGoalPathOption
          ? _value.learningGoalPathOption
          : learningGoalPathOption // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoalPath>,
      selectedLearningGoal: null == selectedLearningGoal
          ? _value.selectedLearningGoal
          : selectedLearningGoal // ignore: cast_nullable_to_non_nullable
              as Option<StudentLearningGoal>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      mockTestItemsOption: null == mockTestItemsOption
          ? _value.mockTestItemsOption
          : mockTestItemsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<MockTestItem>>,
      selectedCat: null == selectedCat
          ? _value.selectedCat
          : selectedCat // ignore: cast_nullable_to_non_nullable
              as int,
      isMissing: null == isMissing
          ? _value.isMissing
          : isMissing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningPathStateImplCopyWith<$Res>
    implements $LearningPathStateCopyWith<$Res> {
  factory _$$LearningPathStateImplCopyWith(_$LearningPathStateImpl value,
          $Res Function(_$LearningPathStateImpl) then) =
      __$$LearningPathStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      Option<LearningGoalPath> learningGoalPathOption,
      Option<StudentLearningGoal> selectedLearningGoal,
      Option<ApiFailure> hasError,
      Option<List<MockTestItem>> mockTestItemsOption,
      int selectedCat,
      bool isMissing});
}

/// @nodoc
class __$$LearningPathStateImplCopyWithImpl<$Res>
    extends _$LearningPathStateCopyWithImpl<$Res, _$LearningPathStateImpl>
    implements _$$LearningPathStateImplCopyWith<$Res> {
  __$$LearningPathStateImplCopyWithImpl(_$LearningPathStateImpl _value,
      $Res Function(_$LearningPathStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? learningGoalPathOption = null,
    Object? selectedLearningGoal = null,
    Object? hasError = null,
    Object? mockTestItemsOption = null,
    Object? selectedCat = null,
    Object? isMissing = null,
  }) {
    return _then(_$LearningPathStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningGoalPathOption: null == learningGoalPathOption
          ? _value.learningGoalPathOption
          : learningGoalPathOption // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoalPath>,
      selectedLearningGoal: null == selectedLearningGoal
          ? _value.selectedLearningGoal
          : selectedLearningGoal // ignore: cast_nullable_to_non_nullable
              as Option<StudentLearningGoal>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
      mockTestItemsOption: null == mockTestItemsOption
          ? _value.mockTestItemsOption
          : mockTestItemsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<MockTestItem>>,
      selectedCat: null == selectedCat
          ? _value.selectedCat
          : selectedCat // ignore: cast_nullable_to_non_nullable
              as int,
      isMissing: null == isMissing
          ? _value.isMissing
          : isMissing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LearningPathStateImpl implements _LearningPathState {
  const _$LearningPathStateImpl(
      {required this.loading,
      required this.learningGoalPathOption,
      required this.selectedLearningGoal,
      required this.hasError,
      required this.mockTestItemsOption,
      required this.selectedCat,
      required this.isMissing});

  @override
  final bool loading;
  @override
  final Option<LearningGoalPath> learningGoalPathOption;
  @override
  final Option<StudentLearningGoal> selectedLearningGoal;
  @override
  final Option<ApiFailure> hasError;
  @override
  final Option<List<MockTestItem>> mockTestItemsOption;
  @override
  final int selectedCat;
  @override
  final bool isMissing;

  @override
  String toString() {
    return 'LearningPathState(loading: $loading, learningGoalPathOption: $learningGoalPathOption, selectedLearningGoal: $selectedLearningGoal, hasError: $hasError, mockTestItemsOption: $mockTestItemsOption, selectedCat: $selectedCat, isMissing: $isMissing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningPathStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.learningGoalPathOption, learningGoalPathOption) ||
                other.learningGoalPathOption == learningGoalPathOption) &&
            (identical(other.selectedLearningGoal, selectedLearningGoal) ||
                other.selectedLearningGoal == selectedLearningGoal) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.mockTestItemsOption, mockTestItemsOption) ||
                other.mockTestItemsOption == mockTestItemsOption) &&
            (identical(other.selectedCat, selectedCat) ||
                other.selectedCat == selectedCat) &&
            (identical(other.isMissing, isMissing) ||
                other.isMissing == isMissing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      learningGoalPathOption,
      selectedLearningGoal,
      hasError,
      mockTestItemsOption,
      selectedCat,
      isMissing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningPathStateImplCopyWith<_$LearningPathStateImpl> get copyWith =>
      __$$LearningPathStateImplCopyWithImpl<_$LearningPathStateImpl>(
          this, _$identity);
}

abstract class _LearningPathState implements LearningPathState {
  const factory _LearningPathState(
      {required final bool loading,
      required final Option<LearningGoalPath> learningGoalPathOption,
      required final Option<StudentLearningGoal> selectedLearningGoal,
      required final Option<ApiFailure> hasError,
      required final Option<List<MockTestItem>> mockTestItemsOption,
      required final int selectedCat,
      required final bool isMissing}) = _$LearningPathStateImpl;

  @override
  bool get loading;
  @override
  Option<LearningGoalPath> get learningGoalPathOption;
  @override
  Option<StudentLearningGoal> get selectedLearningGoal;
  @override
  Option<ApiFailure> get hasError;
  @override
  Option<List<MockTestItem>> get mockTestItemsOption;
  @override
  int get selectedCat;
  @override
  bool get isMissing;
  @override
  @JsonKey(ignore: true)
  _$$LearningPathStateImplCopyWith<_$LearningPathStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
