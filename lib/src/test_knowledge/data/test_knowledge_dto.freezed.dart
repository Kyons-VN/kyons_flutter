// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'test_knowledge_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestContentDto _$TestContentDtoFromJson(Map<String, dynamic> json) {
  return _TestContentDto.fromJson(json);
}

/// @nodoc
mixin _$TestContentDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get questions =>
      throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestContentDtoCopyWith<TestContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestContentDtoCopyWith<$Res> {
  factory $TestContentDtoCopyWith(
          TestContentDto value, $Res Function(TestContentDto) then) =
      _$TestContentDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'data') List<Map<String, dynamic>> questions,
      bool done});
}

/// @nodoc
class _$TestContentDtoCopyWithImpl<$Res>
    implements $TestContentDtoCopyWith<$Res> {
  _$TestContentDtoCopyWithImpl(this._value, this._then);

  final TestContentDto _value;
  // ignore: unused_field
  final $Res Function(TestContentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? questions = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TestContentDtoCopyWith<$Res>
    implements $TestContentDtoCopyWith<$Res> {
  factory _$$_TestContentDtoCopyWith(
          _$_TestContentDto value, $Res Function(_$_TestContentDto) then) =
      __$$_TestContentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'data') List<Map<String, dynamic>> questions,
      bool done});
}

/// @nodoc
class __$$_TestContentDtoCopyWithImpl<$Res>
    extends _$TestContentDtoCopyWithImpl<$Res>
    implements _$$_TestContentDtoCopyWith<$Res> {
  __$$_TestContentDtoCopyWithImpl(
      _$_TestContentDto _value, $Res Function(_$_TestContentDto) _then)
      : super(_value, (v) => _then(v as _$_TestContentDto));

  @override
  _$_TestContentDto get _value => super._value as _$_TestContentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? questions = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_TestContentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questions: questions == freezed
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestContentDto extends _TestContentDto {
  const _$_TestContentDto(
      {required this.id,
      @JsonKey(name: 'data')
          required final List<Map<String, dynamic>> questions,
      required this.done})
      : _questions = questions,
        super._();

  factory _$_TestContentDto.fromJson(Map<String, dynamic> json) =>
      _$$_TestContentDtoFromJson(json);

  @override
  final int id;
  final List<Map<String, dynamic>> _questions;
  @override
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get questions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final bool done;

  @override
  String toString() {
    return 'TestContentDto(id: $id, questions: $questions, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestContentDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other.done, done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(done));

  @JsonKey(ignore: true)
  @override
  _$$_TestContentDtoCopyWith<_$_TestContentDto> get copyWith =>
      __$$_TestContentDtoCopyWithImpl<_$_TestContentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestContentDtoToJson(this);
  }
}

abstract class _TestContentDto extends TestContentDto {
  const factory _TestContentDto(
      {required final int id,
      @JsonKey(name: 'data')
          required final List<Map<String, dynamic>> questions,
      required final bool done}) = _$_TestContentDto;
  const _TestContentDto._() : super._();

  factory _TestContentDto.fromJson(Map<String, dynamic> json) =
      _$_TestContentDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  List<Map<String, dynamic>> get questions =>
      throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TestContentDtoCopyWith<_$_TestContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionDto {
  int get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res>;
  $Res call({int id, String content, List<Map<String, dynamic>> answers});
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res> implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  final QuestionDto _value;
  // ignore: unused_field
  final $Res Function(QuestionDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionDtoCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$_QuestionDtoCopyWith(
          _$_QuestionDto value, $Res Function(_$_QuestionDto) then) =
      __$$_QuestionDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String content, List<Map<String, dynamic>> answers});
}

/// @nodoc
class __$$_QuestionDtoCopyWithImpl<$Res> extends _$QuestionDtoCopyWithImpl<$Res>
    implements _$$_QuestionDtoCopyWith<$Res> {
  __$$_QuestionDtoCopyWithImpl(
      _$_QuestionDto _value, $Res Function(_$_QuestionDto) _then)
      : super(_value, (v) => _then(v as _$_QuestionDto));

  @override
  _$_QuestionDto get _value => super._value as _$_QuestionDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? answers = freezed,
  }) {
    return _then(_$_QuestionDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDto extends _QuestionDto {
  const _$_QuestionDto(
      {required this.id,
      required this.content,
      required final List<Map<String, dynamic>> answers})
      : _answers = answers,
        super._();

  factory _$_QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDtoFromJson(json);

  @override
  final int id;
  @override
  final String content;
  final List<Map<String, dynamic>> _answers;
  @override
  List<Map<String, dynamic>> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QuestionDto(id: $id, content: $content, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(_answers));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      __$$_QuestionDtoCopyWithImpl<_$_QuestionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDtoToJson(this);
  }
}

abstract class _QuestionDto extends QuestionDto {
  const factory _QuestionDto(
      {required final int id,
      required final String content,
      required final List<Map<String, dynamic>> answers}) = _$_QuestionDto;
  const _QuestionDto._() : super._();

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get answers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerDto _$AnswerDtoFromJson(Map<String, dynamic> json) {
  return _AnswerDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerDto {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerDtoCopyWith<AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerDtoCopyWith<$Res> {
  factory $AnswerDtoCopyWith(AnswerDto value, $Res Function(AnswerDto) then) =
      _$AnswerDtoCopyWithImpl<$Res>;
  $Res call({int id, String value, int order, String content});
}

/// @nodoc
class _$AnswerDtoCopyWithImpl<$Res> implements $AnswerDtoCopyWith<$Res> {
  _$AnswerDtoCopyWithImpl(this._value, this._then);

  final AnswerDto _value;
  // ignore: unused_field
  final $Res Function(AnswerDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? order = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AnswerDtoCopyWith<$Res> implements $AnswerDtoCopyWith<$Res> {
  factory _$$_AnswerDtoCopyWith(
          _$_AnswerDto value, $Res Function(_$_AnswerDto) then) =
      __$$_AnswerDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String value, int order, String content});
}

/// @nodoc
class __$$_AnswerDtoCopyWithImpl<$Res> extends _$AnswerDtoCopyWithImpl<$Res>
    implements _$$_AnswerDtoCopyWith<$Res> {
  __$$_AnswerDtoCopyWithImpl(
      _$_AnswerDto _value, $Res Function(_$_AnswerDto) _then)
      : super(_value, (v) => _then(v as _$_AnswerDto));

  @override
  _$_AnswerDto get _value => super._value as _$_AnswerDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? order = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_AnswerDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerDto extends _AnswerDto {
  const _$_AnswerDto(
      {required this.id,
      required this.value,
      required this.order,
      required this.content})
      : super._();

  factory _$_AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerDtoFromJson(json);

  @override
  final int id;
  @override
  final String value;
  @override
  final int order;
  @override
  final String content;

  @override
  String toString() {
    return 'AnswerDto(id: $id, value: $value, order: $order, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      __$$_AnswerDtoCopyWithImpl<_$_AnswerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerDtoToJson(this);
  }
}

abstract class _AnswerDto extends AnswerDto {
  const factory _AnswerDto(
      {required final int id,
      required final String value,
      required final int order,
      required final String content}) = _$_AnswerDto;
  const _AnswerDto._() : super._();

  factory _AnswerDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get value => throw _privateConstructorUsedError;
  @override
  int get order => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
