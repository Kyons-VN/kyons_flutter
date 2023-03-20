// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  Option<Either<ApiFailure, List<Program>>> get studentProgramsOption =>
      throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  ProgramsDisplay get display => throw _privateConstructorUsedError;
  int get carouselIndex => throw _privateConstructorUsedError;
  int get previousIndex => throw _privateConstructorUsedError;
  Option<LearningGoal> get selectedLearningGoalOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Option<Either<ApiFailure, List<Program>>> studentProgramsOption,
      bool hasError,
      ProgramsDisplay display,
      int carouselIndex,
      int previousIndex,
      Option<LearningGoal> selectedLearningGoalOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentProgramsOption = null,
    Object? hasError = null,
    Object? display = null,
    Object? carouselIndex = null,
    Object? previousIndex = null,
    Object? selectedLearningGoalOption = null,
  }) {
    return _then(_value.copyWith(
      studentProgramsOption: null == studentProgramsOption
          ? _value.studentProgramsOption
          : studentProgramsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, List<Program>>>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as ProgramsDisplay,
      carouselIndex: null == carouselIndex
          ? _value.carouselIndex
          : carouselIndex // ignore: cast_nullable_to_non_nullable
              as int,
      previousIndex: null == previousIndex
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLearningGoalOption: null == selectedLearningGoalOption
          ? _value.selectedLearningGoalOption
          : selectedLearningGoalOption // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiFailure, List<Program>>> studentProgramsOption,
      bool hasError,
      ProgramsDisplay display,
      int carouselIndex,
      int previousIndex,
      Option<LearningGoal> selectedLearningGoalOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentProgramsOption = null,
    Object? hasError = null,
    Object? display = null,
    Object? carouselIndex = null,
    Object? previousIndex = null,
    Object? selectedLearningGoalOption = null,
  }) {
    return _then(_$_HomeState(
      studentProgramsOption: null == studentProgramsOption
          ? _value.studentProgramsOption
          : studentProgramsOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, List<Program>>>,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as ProgramsDisplay,
      carouselIndex: null == carouselIndex
          ? _value.carouselIndex
          : carouselIndex // ignore: cast_nullable_to_non_nullable
              as int,
      previousIndex: null == previousIndex
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
      selectedLearningGoalOption: null == selectedLearningGoalOption
          ? _value.selectedLearningGoalOption
          : selectedLearningGoalOption // ignore: cast_nullable_to_non_nullable
              as Option<LearningGoal>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.studentProgramsOption,
      required this.hasError,
      required this.display,
      required this.carouselIndex,
      required this.previousIndex,
      required this.selectedLearningGoalOption});

  @override
  final Option<Either<ApiFailure, List<Program>>> studentProgramsOption;
  @override
  final bool hasError;
  @override
  final ProgramsDisplay display;
  @override
  final int carouselIndex;
  @override
  final int previousIndex;
  @override
  final Option<LearningGoal> selectedLearningGoalOption;

  @override
  String toString() {
    return 'HomeState(studentProgramsOption: $studentProgramsOption, hasError: $hasError, display: $display, carouselIndex: $carouselIndex, previousIndex: $previousIndex, selectedLearningGoalOption: $selectedLearningGoalOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.studentProgramsOption, studentProgramsOption) ||
                other.studentProgramsOption == studentProgramsOption) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.carouselIndex, carouselIndex) ||
                other.carouselIndex == carouselIndex) &&
            (identical(other.previousIndex, previousIndex) ||
                other.previousIndex == previousIndex) &&
            (identical(other.selectedLearningGoalOption,
                    selectedLearningGoalOption) ||
                other.selectedLearningGoalOption ==
                    selectedLearningGoalOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentProgramsOption, hasError,
      display, carouselIndex, previousIndex, selectedLearningGoalOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {required final Option<Either<ApiFailure, List<Program>>>
              studentProgramsOption,
          required final bool hasError,
          required final ProgramsDisplay display,
          required final int carouselIndex,
          required final int previousIndex,
          required final Option<LearningGoal> selectedLearningGoalOption}) =
      _$_HomeState;

  @override
  Option<Either<ApiFailure, List<Program>>> get studentProgramsOption;
  @override
  bool get hasError;
  @override
  ProgramsDisplay get display;
  @override
  int get carouselIndex;
  @override
  int get previousIndex;
  @override
  Option<LearningGoal> get selectedLearningGoalOption;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
