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
  Option<Program> get selectedProgram => throw _privateConstructorUsedError;
  Option<LearningGoal> get selectedLearningGoal =>
      throw _privateConstructorUsedError;
  Option<ApiFailure> get hasError => throw _privateConstructorUsedError;
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
      Option<Program> selectedProgram,
      Option<LearningGoal> selectedLearningGoal,
      Option<ApiFailure> hasError,
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
    Object? selectedProgram = null,
    Object? selectedLearningGoal = null,
    Object? hasError = null,
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
      selectedProgram: null == selectedProgram
          ? _value.selectedProgram
          : selectedProgram // ignore: cast_nullable_to_non_nullable
              as Option<Program>,
      selectedLearningGoal: null == selectedLearningGoal
          ? _value.selectedLearningGoal
          : selectedLearningGoal // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoal>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
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
abstract class _$$_LearningPathStateCopyWith<$Res>
    implements $LearningPathStateCopyWith<$Res> {
  factory _$$_LearningPathStateCopyWith(_$_LearningPathState value,
          $Res Function(_$_LearningPathState) then) =
      __$$_LearningPathStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      Option<LearningGoalPath> learningGoalPathOption,
      Option<Program> selectedProgram,
      Option<LearningGoal> selectedLearningGoal,
      Option<ApiFailure> hasError,
      int selectedCat,
      bool isMissing});
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
    Object? learningGoalPathOption = null,
    Object? selectedProgram = null,
    Object? selectedLearningGoal = null,
    Object? hasError = null,
    Object? selectedCat = null,
    Object? isMissing = null,
  }) {
    return _then(_$_LearningPathState(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      learningGoalPathOption: null == learningGoalPathOption
          ? _value.learningGoalPathOption
          : learningGoalPathOption // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoalPath>,
      selectedProgram: null == selectedProgram
          ? _value.selectedProgram
          : selectedProgram // ignore: cast_nullable_to_non_nullable
              as Option<Program>,
      selectedLearningGoal: null == selectedLearningGoal
          ? _value.selectedLearningGoal
          : selectedLearningGoal // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoal>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as Option<ApiFailure>,
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

class _$_LearningPathState implements _LearningPathState {
  const _$_LearningPathState(
      {required this.loading,
      required this.learningGoalPathOption,
      required this.selectedProgram,
      required this.selectedLearningGoal,
      required this.hasError,
      required this.selectedCat,
      required this.isMissing});

  @override
  final bool loading;
  @override
  final Option<LearningGoalPath> learningGoalPathOption;
  @override
  final Option<Program> selectedProgram;
  @override
  final Option<LearningGoal> selectedLearningGoal;
  @override
  final Option<ApiFailure> hasError;
  @override
  final int selectedCat;
  @override
  final bool isMissing;

  @override
  String toString() {
    return 'LearningPathState(loading: $loading, learningGoalPathOption: $learningGoalPathOption, selectedProgram: $selectedProgram, selectedLearningGoal: $selectedLearningGoal, hasError: $hasError, selectedCat: $selectedCat, isMissing: $isMissing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathState &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.learningGoalPathOption, learningGoalPathOption) ||
                other.learningGoalPathOption == learningGoalPathOption) &&
            (identical(other.selectedProgram, selectedProgram) ||
                other.selectedProgram == selectedProgram) &&
            (identical(other.selectedLearningGoal, selectedLearningGoal) ||
                other.selectedLearningGoal == selectedLearningGoal) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.selectedCat, selectedCat) ||
                other.selectedCat == selectedCat) &&
            (identical(other.isMissing, isMissing) ||
                other.isMissing == isMissing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, learningGoalPathOption,
      selectedProgram, selectedLearningGoal, hasError, selectedCat, isMissing);

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
      required final Option<LearningGoalPath> learningGoalPathOption,
      required final Option<Program> selectedProgram,
      required final Option<LearningGoal> selectedLearningGoal,
      required final Option<ApiFailure> hasError,
      required final int selectedCat,
      required final bool isMissing}) = _$_LearningPathState;

  @override
  bool get loading;
  @override
  Option<LearningGoalPath> get learningGoalPathOption;
  @override
  Option<Program> get selectedProgram;
  @override
  Option<LearningGoal> get selectedLearningGoal;
  @override
  Option<ApiFailure> get hasError;
  @override
  int get selectedCat;
  @override
  bool get isMissing;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathStateCopyWith<_$_LearningPathState> get copyWith =>
      throw _privateConstructorUsedError;
}
