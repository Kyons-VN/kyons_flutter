// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  Option<Either<ApiFailure, Iterable<Subject>>> get subjectOption =>
      throw _privateConstructorUsedError;
  Option<Program> get programOption => throw _privateConstructorUsedError;
  bool get isSelectingSubject => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, Unit>> get submitOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<ApiFailure, Iterable<Subject>>> subjectOption,
      Option<Program> programOption,
      bool isSelectingSubject,
      bool hasError,
      Option<Either<ApiFailure, Unit>> submitOption});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? subjectOption = freezed,
    Object? programOption = freezed,
    Object? isSelectingSubject = freezed,
    Object? hasError = freezed,
    Object? submitOption = freezed,
  }) {
    return _then(_value.copyWith(
      subjectOption: subjectOption == freezed
          ? _value.subjectOption
          : subjectOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Iterable<Subject>>>,
      programOption: programOption == freezed
          ? _value.programOption
          : programOption // ignore: cast_nullable_to_non_nullable
              as Option<Program>,
      isSelectingSubject: isSelectingSubject == freezed
          ? _value.isSelectingSubject
          : isSelectingSubject // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      submitOption: submitOption == freezed
          ? _value.submitOption
          : submitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<ApiFailure, Iterable<Subject>>> subjectOption,
      Option<Program> programOption,
      bool isSelectingSubject,
      bool hasError,
      Option<Either<ApiFailure, Unit>> submitOption});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? subjectOption = freezed,
    Object? programOption = freezed,
    Object? isSelectingSubject = freezed,
    Object? hasError = freezed,
    Object? submitOption = freezed,
  }) {
    return _then(_$_HomeState(
      subjectOption: subjectOption == freezed
          ? _value.subjectOption
          : subjectOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Iterable<Subject>>>,
      programOption: programOption == freezed
          ? _value.programOption
          : programOption // ignore: cast_nullable_to_non_nullable
              as Option<Program>,
      isSelectingSubject: isSelectingSubject == freezed
          ? _value.isSelectingSubject
          : isSelectingSubject // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      submitOption: submitOption == freezed
          ? _value.submitOption
          : submitOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.subjectOption,
      required this.programOption,
      required this.isSelectingSubject,
      required this.hasError,
      required this.submitOption});

  @override
  final Option<Either<ApiFailure, Iterable<Subject>>> subjectOption;
  @override
  final Option<Program> programOption;
  @override
  final bool isSelectingSubject;
  @override
  final bool hasError;
  @override
  final Option<Either<ApiFailure, Unit>> submitOption;

  @override
  String toString() {
    return 'HomeState(subjectOption: $subjectOption, programOption: $programOption, isSelectingSubject: $isSelectingSubject, hasError: $hasError, submitOption: $submitOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other.subjectOption, subjectOption) &&
            const DeepCollectionEquality()
                .equals(other.programOption, programOption) &&
            const DeepCollectionEquality()
                .equals(other.isSelectingSubject, isSelectingSubject) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.submitOption, submitOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subjectOption),
      const DeepCollectionEquality().hash(programOption),
      const DeepCollectionEquality().hash(isSelectingSubject),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(submitOption));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
          {required final Option<Either<ApiFailure, Iterable<Subject>>>
              subjectOption,
          required final Option<Program> programOption,
          required final bool isSelectingSubject,
          required final bool hasError,
          required final Option<Either<ApiFailure, Unit>> submitOption}) =
      _$_HomeState;

  @override
  Option<Either<ApiFailure, Iterable<Subject>>> get subjectOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Program> get programOption => throw _privateConstructorUsedError;
  @override
  bool get isSelectingSubject => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  Option<Either<ApiFailure, Unit>> get submitOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
