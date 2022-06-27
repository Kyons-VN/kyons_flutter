// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diagnostic_test_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiagnosticTestState {
  bool get loading => throw _privateConstructorUsedError;
  Option<TestContent> get content => throw _privateConstructorUsedError;
  Option<Map<String, dynamic>> get answersResult =>
      throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiagnosticTestStateCopyWith<DiagnosticTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosticTestStateCopyWith<$Res> {
  factory $DiagnosticTestStateCopyWith(
          DiagnosticTestState value, $Res Function(DiagnosticTestState) then) =
      _$DiagnosticTestStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<TestContent> content,
      Option<Map<String, dynamic>> answersResult,
      int progress,
      bool isSubmitted,
      bool hasError});
}

/// @nodoc
class _$DiagnosticTestStateCopyWithImpl<$Res>
    implements $DiagnosticTestStateCopyWith<$Res> {
  _$DiagnosticTestStateCopyWithImpl(this._value, this._then);

  final DiagnosticTestState _value;
  // ignore: unused_field
  final $Res Function(DiagnosticTestState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? content = freezed,
    Object? answersResult = freezed,
    Object? progress = freezed,
    Object? isSubmitted = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Option<TestContent>,
      answersResult: answersResult == freezed
          ? _value.answersResult
          : answersResult // ignore: cast_nullable_to_non_nullable
              as Option<Map<String, dynamic>>,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DiagnosticTestStateCopyWith<$Res>
    implements $DiagnosticTestStateCopyWith<$Res> {
  factory _$$_DiagnosticTestStateCopyWith(_$_DiagnosticTestState value,
          $Res Function(_$_DiagnosticTestState) then) =
      __$$_DiagnosticTestStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<TestContent> content,
      Option<Map<String, dynamic>> answersResult,
      int progress,
      bool isSubmitted,
      bool hasError});
}

/// @nodoc
class __$$_DiagnosticTestStateCopyWithImpl<$Res>
    extends _$DiagnosticTestStateCopyWithImpl<$Res>
    implements _$$_DiagnosticTestStateCopyWith<$Res> {
  __$$_DiagnosticTestStateCopyWithImpl(_$_DiagnosticTestState _value,
      $Res Function(_$_DiagnosticTestState) _then)
      : super(_value, (v) => _then(v as _$_DiagnosticTestState));

  @override
  _$_DiagnosticTestState get _value => super._value as _$_DiagnosticTestState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? content = freezed,
    Object? answersResult = freezed,
    Object? progress = freezed,
    Object? isSubmitted = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_$_DiagnosticTestState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Option<TestContent>,
      answersResult: answersResult == freezed
          ? _value.answersResult
          : answersResult // ignore: cast_nullable_to_non_nullable
              as Option<Map<String, dynamic>>,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      isSubmitted: isSubmitted == freezed
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DiagnosticTestState implements _DiagnosticTestState {
  const _$_DiagnosticTestState(
      {required this.loading,
      required this.content,
      required this.answersResult,
      required this.progress,
      required this.isSubmitted,
      required this.hasError});

  @override
  final bool loading;
  @override
  final Option<TestContent> content;
  @override
  final Option<Map<String, dynamic>> answersResult;
  @override
  final int progress;
  @override
  final bool isSubmitted;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'DiagnosticTestState(loading: $loading, content: $content, answersResult: $answersResult, progress: $progress, isSubmitted: $isSubmitted, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiagnosticTestState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.answersResult, answersResult) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitted, isSubmitted) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(answersResult),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(isSubmitted),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$$_DiagnosticTestStateCopyWith<_$_DiagnosticTestState> get copyWith =>
      __$$_DiagnosticTestStateCopyWithImpl<_$_DiagnosticTestState>(
          this, _$identity);
}

abstract class _DiagnosticTestState implements DiagnosticTestState {
  const factory _DiagnosticTestState(
      {required final bool loading,
      required final Option<TestContent> content,
      required final Option<Map<String, dynamic>> answersResult,
      required final int progress,
      required final bool isSubmitted,
      required final bool hasError}) = _$_DiagnosticTestState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<TestContent> get content => throw _privateConstructorUsedError;
  @override
  Option<Map<String, dynamic>> get answersResult =>
      throw _privateConstructorUsedError;
  @override
  int get progress => throw _privateConstructorUsedError;
  @override
  bool get isSubmitted => throw _privateConstructorUsedError;
  @override
  bool get hasError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DiagnosticTestStateCopyWith<_$_DiagnosticTestState> get copyWith =>
      throw _privateConstructorUsedError;
}
