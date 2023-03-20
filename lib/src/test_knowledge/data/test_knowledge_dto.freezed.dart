// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @JsonKey(name: 'test_id', defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data', defaultValue: [])
  List<Map<String, dynamic>> get questions =>
      throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
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
      _$TestContentDtoCopyWithImpl<$Res, TestContentDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'test_id', defaultValue: 0)
          int id,
      @JsonKey(name: 'data', defaultValue: [])
          List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false)
          bool done});
}

/// @nodoc
class _$TestContentDtoCopyWithImpl<$Res, $Val extends TestContentDto>
    implements $TestContentDtoCopyWith<$Res> {
  _$TestContentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questions = null,
    Object? done = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestContentDtoCopyWith<$Res>
    implements $TestContentDtoCopyWith<$Res> {
  factory _$$_TestContentDtoCopyWith(
          _$_TestContentDto value, $Res Function(_$_TestContentDto) then) =
      __$$_TestContentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'test_id', defaultValue: 0)
          int id,
      @JsonKey(name: 'data', defaultValue: [])
          List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false)
          bool done});
}

/// @nodoc
class __$$_TestContentDtoCopyWithImpl<$Res>
    extends _$TestContentDtoCopyWithImpl<$Res, _$_TestContentDto>
    implements _$$_TestContentDtoCopyWith<$Res> {
  __$$_TestContentDtoCopyWithImpl(
      _$_TestContentDto _value, $Res Function(_$_TestContentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questions = null,
    Object? done = null,
  }) {
    return _then(_$_TestContentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      done: null == done
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
      {@JsonKey(name: 'test_id', defaultValue: 0)
          required this.id,
      @JsonKey(name: 'data', defaultValue: [])
          required final List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false)
          required this.done})
      : _questions = questions,
        super._();

  factory _$_TestContentDto.fromJson(Map<String, dynamic> json) =>
      _$$_TestContentDtoFromJson(json);

  @override
  @JsonKey(name: 'test_id', defaultValue: 0)
  final int id;
  final List<Map<String, dynamic>> _questions;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<Map<String, dynamic>> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  @JsonKey(defaultValue: false)
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
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_questions), done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestContentDtoCopyWith<_$_TestContentDto> get copyWith =>
      __$$_TestContentDtoCopyWithImpl<_$_TestContentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestContentDtoToJson(
      this,
    );
  }
}

abstract class _TestContentDto extends TestContentDto {
  const factory _TestContentDto(
      {@JsonKey(name: 'test_id', defaultValue: 0)
          required final int id,
      @JsonKey(name: 'data', defaultValue: [])
          required final List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false)
          required final bool done}) = _$_TestContentDto;
  const _TestContentDto._() : super._();

  factory _TestContentDto.fromJson(Map<String, dynamic> json) =
      _$_TestContentDto.fromJson;

  @override
  @JsonKey(name: 'test_id', defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<Map<String, dynamic>> get questions;
  @override
  @JsonKey(defaultValue: false)
  bool get done;
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
  @JsonKey(name: 'answer_keys')
  List<Map<String, dynamic>> get answers => throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
  int get learningPointDifficultyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_level', defaultValue: 0)
  int get difficultyLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_point_id', defaultValue: 0)
  int get learningPointId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id', defaultValue: 0)
  int get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_name', defaultValue: '')
  String get topicName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id', defaultValue: 0)
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name', defaultValue: '')
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res, QuestionDto>;
  @useResult
  $Res call(
      {int id,
      String content,
      @JsonKey(name: 'answer_keys')
          List<Map<String, dynamic>> answers,
      @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
          int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level', defaultValue: 0)
          int difficultyLevel,
      @JsonKey(name: 'learning_point_id', defaultValue: 0)
          int learningPointId,
      @JsonKey(name: 'topic_id', defaultValue: 0)
          int topicId,
      @JsonKey(name: 'topic_name', defaultValue: '')
          String topicName,
      @JsonKey(name: 'category_id', defaultValue: 0)
          int categoryId,
      @JsonKey(name: 'category_name', defaultValue: '')
          String categoryName});
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res, $Val extends QuestionDto>
    implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? answers = null,
    Object? learningPointDifficultyId = null,
    Object? difficultyLevel = null,
    Object? learningPointId = null,
    Object? topicId = null,
    Object? topicName = null,
    Object? categoryId = null,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      learningPointDifficultyId: null == learningPointDifficultyId
          ? _value.learningPointDifficultyId
          : learningPointDifficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      learningPointId: null == learningPointId
          ? _value.learningPointId
          : learningPointId // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionDtoCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$_QuestionDtoCopyWith(
          _$_QuestionDto value, $Res Function(_$_QuestionDto) then) =
      __$$_QuestionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      @JsonKey(name: 'answer_keys')
          List<Map<String, dynamic>> answers,
      @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
          int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level', defaultValue: 0)
          int difficultyLevel,
      @JsonKey(name: 'learning_point_id', defaultValue: 0)
          int learningPointId,
      @JsonKey(name: 'topic_id', defaultValue: 0)
          int topicId,
      @JsonKey(name: 'topic_name', defaultValue: '')
          String topicName,
      @JsonKey(name: 'category_id', defaultValue: 0)
          int categoryId,
      @JsonKey(name: 'category_name', defaultValue: '')
          String categoryName});
}

/// @nodoc
class __$$_QuestionDtoCopyWithImpl<$Res>
    extends _$QuestionDtoCopyWithImpl<$Res, _$_QuestionDto>
    implements _$$_QuestionDtoCopyWith<$Res> {
  __$$_QuestionDtoCopyWithImpl(
      _$_QuestionDto _value, $Res Function(_$_QuestionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? answers = null,
    Object? learningPointDifficultyId = null,
    Object? difficultyLevel = null,
    Object? learningPointId = null,
    Object? topicId = null,
    Object? topicName = null,
    Object? categoryId = null,
    Object? categoryName = null,
  }) {
    return _then(_$_QuestionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      learningPointDifficultyId: null == learningPointDifficultyId
          ? _value.learningPointDifficultyId
          : learningPointDifficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      learningPointId: null == learningPointId
          ? _value.learningPointId
          : learningPointId // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDto extends _QuestionDto {
  const _$_QuestionDto(
      {required this.id,
      required this.content,
      @JsonKey(name: 'answer_keys')
          required final List<Map<String, dynamic>> answers,
      @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
          required this.learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level', defaultValue: 0)
          required this.difficultyLevel,
      @JsonKey(name: 'learning_point_id', defaultValue: 0)
          required this.learningPointId,
      @JsonKey(name: 'topic_id', defaultValue: 0)
          required this.topicId,
      @JsonKey(name: 'topic_name', defaultValue: '')
          required this.topicName,
      @JsonKey(name: 'category_id', defaultValue: 0)
          required this.categoryId,
      @JsonKey(name: 'category_name', defaultValue: '')
          required this.categoryName})
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
  @JsonKey(name: 'answer_keys')
  List<Map<String, dynamic>> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
  final int learningPointDifficultyId;
  @override
  @JsonKey(name: 'difficulty_level', defaultValue: 0)
  final int difficultyLevel;
  @override
  @JsonKey(name: 'learning_point_id', defaultValue: 0)
  final int learningPointId;
  @override
  @JsonKey(name: 'topic_id', defaultValue: 0)
  final int topicId;
  @override
  @JsonKey(name: 'topic_name', defaultValue: '')
  final String topicName;
  @override
  @JsonKey(name: 'category_id', defaultValue: 0)
  final int categoryId;
  @override
  @JsonKey(name: 'category_name', defaultValue: '')
  final String categoryName;

  @override
  String toString() {
    return 'QuestionDto(id: $id, content: $content, answers: $answers, learningPointDifficultyId: $learningPointDifficultyId, difficultyLevel: $difficultyLevel, learningPointId: $learningPointId, topicId: $topicId, topicName: $topicName, categoryId: $categoryId, categoryName: $categoryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.learningPointDifficultyId,
                    learningPointDifficultyId) ||
                other.learningPointDifficultyId == learningPointDifficultyId) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.learningPointId, learningPointId) ||
                other.learningPointId == learningPointId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      const DeepCollectionEquality().hash(_answers),
      learningPointDifficultyId,
      difficultyLevel,
      learningPointId,
      topicId,
      topicName,
      categoryId,
      categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      __$$_QuestionDtoCopyWithImpl<_$_QuestionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDtoToJson(
      this,
    );
  }
}

abstract class _QuestionDto extends QuestionDto {
  const factory _QuestionDto(
      {required final int id,
      required final String content,
      @JsonKey(name: 'answer_keys')
          required final List<Map<String, dynamic>> answers,
      @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
          required final int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level', defaultValue: 0)
          required final int difficultyLevel,
      @JsonKey(name: 'learning_point_id', defaultValue: 0)
          required final int learningPointId,
      @JsonKey(name: 'topic_id', defaultValue: 0)
          required final int topicId,
      @JsonKey(name: 'topic_name', defaultValue: '')
          required final String topicName,
      @JsonKey(name: 'category_id', defaultValue: 0)
          required final int categoryId,
      @JsonKey(name: 'category_name', defaultValue: '')
          required final String categoryName}) = _$_QuestionDto;
  const _QuestionDto._() : super._();

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionDto.fromJson;

  @override
  int get id;
  @override
  String get content;
  @override
  @JsonKey(name: 'answer_keys')
  List<Map<String, dynamic>> get answers;
  @override
  @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
  int get learningPointDifficultyId;
  @override
  @JsonKey(name: 'difficulty_level', defaultValue: 0)
  int get difficultyLevel;
  @override
  @JsonKey(name: 'learning_point_id', defaultValue: 0)
  int get learningPointId;
  @override
  @JsonKey(name: 'topic_id', defaultValue: 0)
  int get topicId;
  @override
  @JsonKey(name: 'topic_name', defaultValue: '')
  String get topicName;
  @override
  @JsonKey(name: 'category_id', defaultValue: 0)
  int get categoryId;
  @override
  @JsonKey(name: 'category_name', defaultValue: '')
  String get categoryName;
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
  @JsonKey(defaultValue: 0)
  int get order => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false, name: 'is_correct')
  bool get isCorrect => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerDtoCopyWith<AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerDtoCopyWith<$Res> {
  factory $AnswerDtoCopyWith(AnswerDto value, $Res Function(AnswerDto) then) =
      _$AnswerDtoCopyWithImpl<$Res, AnswerDto>;
  @useResult
  $Res call(
      {int id,
      String value,
      @JsonKey(defaultValue: 0) int order,
      @JsonKey(defaultValue: false, name: 'is_correct') bool isCorrect,
      String content});
}

/// @nodoc
class _$AnswerDtoCopyWithImpl<$Res, $Val extends AnswerDto>
    implements $AnswerDtoCopyWith<$Res> {
  _$AnswerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? order = null,
    Object? isCorrect = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerDtoCopyWith<$Res> implements $AnswerDtoCopyWith<$Res> {
  factory _$$_AnswerDtoCopyWith(
          _$_AnswerDto value, $Res Function(_$_AnswerDto) then) =
      __$$_AnswerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String value,
      @JsonKey(defaultValue: 0) int order,
      @JsonKey(defaultValue: false, name: 'is_correct') bool isCorrect,
      String content});
}

/// @nodoc
class __$$_AnswerDtoCopyWithImpl<$Res>
    extends _$AnswerDtoCopyWithImpl<$Res, _$_AnswerDto>
    implements _$$_AnswerDtoCopyWith<$Res> {
  __$$_AnswerDtoCopyWithImpl(
      _$_AnswerDto _value, $Res Function(_$_AnswerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? order = null,
    Object? isCorrect = null,
    Object? content = null,
  }) {
    return _then(_$_AnswerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
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
      @JsonKey(defaultValue: 0) required this.order,
      @JsonKey(defaultValue: false, name: 'is_correct') required this.isCorrect,
      required this.content})
      : super._();

  factory _$_AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerDtoFromJson(json);

  @override
  final int id;
  @override
  final String value;
  @override
  @JsonKey(defaultValue: 0)
  final int order;
  @override
  @JsonKey(defaultValue: false, name: 'is_correct')
  final bool isCorrect;
  @override
  final String content;

  @override
  String toString() {
    return 'AnswerDto(id: $id, value: $value, order: $order, isCorrect: $isCorrect, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, order, isCorrect, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      __$$_AnswerDtoCopyWithImpl<_$_AnswerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerDtoToJson(
      this,
    );
  }
}

abstract class _AnswerDto extends AnswerDto {
  const factory _AnswerDto(
      {required final int id,
      required final String value,
      @JsonKey(defaultValue: 0)
          required final int order,
      @JsonKey(defaultValue: false, name: 'is_correct')
          required final bool isCorrect,
      required final String content}) = _$_AnswerDto;
  const _AnswerDto._() : super._();

  factory _AnswerDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerDto.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(defaultValue: 0)
  int get order;
  @override
  @JsonKey(defaultValue: false, name: 'is_correct')
  bool get isCorrect;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerResultDto _$AnswerResultDtoFromJson(Map<String, dynamic> json) {
  return _AnswerResultDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerResultDto {
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_id')
  int get questionId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerResultDtoCopyWith<AnswerResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerResultDtoCopyWith<$Res> {
  factory $AnswerResultDtoCopyWith(
          AnswerResultDto value, $Res Function(AnswerResultDto) then) =
      _$AnswerResultDtoCopyWithImpl<$Res, AnswerResultDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'question_id') int questionId,
      int score});
}

/// @nodoc
class _$AnswerResultDtoCopyWithImpl<$Res, $Val extends AnswerResultDto>
    implements $AnswerResultDtoCopyWith<$Res> {
  _$AnswerResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? categoryId = null,
    Object? questionId = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerResultDtoCopyWith<$Res>
    implements $AnswerResultDtoCopyWith<$Res> {
  factory _$$_AnswerResultDtoCopyWith(
          _$_AnswerResultDto value, $Res Function(_$_AnswerResultDto) then) =
      __$$_AnswerResultDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'question_id') int questionId,
      int score});
}

/// @nodoc
class __$$_AnswerResultDtoCopyWithImpl<$Res>
    extends _$AnswerResultDtoCopyWithImpl<$Res, _$_AnswerResultDto>
    implements _$$_AnswerResultDtoCopyWith<$Res> {
  __$$_AnswerResultDtoCopyWithImpl(
      _$_AnswerResultDto _value, $Res Function(_$_AnswerResultDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? categoryId = null,
    Object? questionId = null,
    Object? score = null,
  }) {
    return _then(_$_AnswerResultDto(
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerResultDto extends _AnswerResultDto {
  const _$_AnswerResultDto(
      {@JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'question_id') required this.questionId,
      required this.score})
      : super._();

  factory _$_AnswerResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerResultDtoFromJson(json);

  @override
  @JsonKey(name: 'topic_id')
  final int topicId;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'question_id')
  final int questionId;
  @override
  final int score;

  @override
  String toString() {
    return 'AnswerResultDto(topicId: $topicId, categoryId: $categoryId, questionId: $questionId, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerResultDto &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, topicId, categoryId, questionId, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerResultDtoCopyWith<_$_AnswerResultDto> get copyWith =>
      __$$_AnswerResultDtoCopyWithImpl<_$_AnswerResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerResultDtoToJson(
      this,
    );
  }
}

abstract class _AnswerResultDto extends AnswerResultDto {
  const factory _AnswerResultDto(
      {@JsonKey(name: 'topic_id') required final int topicId,
      @JsonKey(name: 'category_id') required final int categoryId,
      @JsonKey(name: 'question_id') required final int questionId,
      required final int score}) = _$_AnswerResultDto;
  const _AnswerResultDto._() : super._();

  factory _AnswerResultDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerResultDto.fromJson;

  @override
  @JsonKey(name: 'topic_id')
  int get topicId;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'question_id')
  int get questionId;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerResultDtoCopyWith<_$_AnswerResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerReviewDto _$AnswerReviewDtoFromJson(Map<String, dynamic> json) {
  return _AnswerReviewDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerReviewDto {
  @JsonKey(name: 'selected_answer')
  List<int> get selectedAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'right_answer')
  List<int> get rightAnswers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerReviewDtoCopyWith<AnswerReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerReviewDtoCopyWith<$Res> {
  factory $AnswerReviewDtoCopyWith(
          AnswerReviewDto value, $Res Function(AnswerReviewDto) then) =
      _$AnswerReviewDtoCopyWithImpl<$Res, AnswerReviewDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'selected_answer') List<int> selectedAnswers,
      @JsonKey(name: 'right_answer') List<int> rightAnswers});
}

/// @nodoc
class _$AnswerReviewDtoCopyWithImpl<$Res, $Val extends AnswerReviewDto>
    implements $AnswerReviewDtoCopyWith<$Res> {
  _$AnswerReviewDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAnswers = null,
    Object? rightAnswers = null,
  }) {
    return _then(_value.copyWith(
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      rightAnswers: null == rightAnswers
          ? _value.rightAnswers
          : rightAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerReviewDtoCopyWith<$Res>
    implements $AnswerReviewDtoCopyWith<$Res> {
  factory _$$_AnswerReviewDtoCopyWith(
          _$_AnswerReviewDto value, $Res Function(_$_AnswerReviewDto) then) =
      __$$_AnswerReviewDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'selected_answer') List<int> selectedAnswers,
      @JsonKey(name: 'right_answer') List<int> rightAnswers});
}

/// @nodoc
class __$$_AnswerReviewDtoCopyWithImpl<$Res>
    extends _$AnswerReviewDtoCopyWithImpl<$Res, _$_AnswerReviewDto>
    implements _$$_AnswerReviewDtoCopyWith<$Res> {
  __$$_AnswerReviewDtoCopyWithImpl(
      _$_AnswerReviewDto _value, $Res Function(_$_AnswerReviewDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAnswers = null,
    Object? rightAnswers = null,
  }) {
    return _then(_$_AnswerReviewDto(
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      rightAnswers: null == rightAnswers
          ? _value._rightAnswers
          : rightAnswers // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerReviewDto extends _AnswerReviewDto {
  const _$_AnswerReviewDto(
      {@JsonKey(name: 'selected_answer')
          required final List<int> selectedAnswers,
      @JsonKey(name: 'right_answer')
          required final List<int> rightAnswers})
      : _selectedAnswers = selectedAnswers,
        _rightAnswers = rightAnswers,
        super._();

  factory _$_AnswerReviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerReviewDtoFromJson(json);

  final List<int> _selectedAnswers;
  @override
  @JsonKey(name: 'selected_answer')
  List<int> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableListView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAnswers);
  }

  final List<int> _rightAnswers;
  @override
  @JsonKey(name: 'right_answer')
  List<int> get rightAnswers {
    if (_rightAnswers is EqualUnmodifiableListView) return _rightAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rightAnswers);
  }

  @override
  String toString() {
    return 'AnswerReviewDto(selectedAnswers: $selectedAnswers, rightAnswers: $rightAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerReviewDto &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers) &&
            const DeepCollectionEquality()
                .equals(other._rightAnswers, _rightAnswers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedAnswers),
      const DeepCollectionEquality().hash(_rightAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerReviewDtoCopyWith<_$_AnswerReviewDto> get copyWith =>
      __$$_AnswerReviewDtoCopyWithImpl<_$_AnswerReviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerReviewDtoToJson(
      this,
    );
  }
}

abstract class _AnswerReviewDto extends AnswerReviewDto {
  const factory _AnswerReviewDto(
      {@JsonKey(name: 'selected_answer')
          required final List<int> selectedAnswers,
      @JsonKey(name: 'right_answer')
          required final List<int> rightAnswers}) = _$_AnswerReviewDto;
  const _AnswerReviewDto._() : super._();

  factory _AnswerReviewDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerReviewDto.fromJson;

  @override
  @JsonKey(name: 'selected_answer')
  List<int> get selectedAnswers;
  @override
  @JsonKey(name: 'right_answer')
  List<int> get rightAnswers;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerReviewDtoCopyWith<_$_AnswerReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TestResultDto _$TestResultDtoFromJson(Map<String, dynamic> json) {
  return _TestResultDto.fromJson(json);
}

/// @nodoc
mixin _$TestResultDto {
  @JsonKey(name: 'total_score')
  double get score => throw _privateConstructorUsedError;
  List<AnswerResultDto> get result => throw _privateConstructorUsedError;
  AnswerReviewDto get review => throw _privateConstructorUsedError;
  @TestTypeConverter()
  TestType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'mocktest_referral', defaultValue: '')
  String get referral => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestResultDtoCopyWith<TestResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultDtoCopyWith<$Res> {
  factory $TestResultDtoCopyWith(
          TestResultDto value, $Res Function(TestResultDto) then) =
      _$TestResultDtoCopyWithImpl<$Res, TestResultDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_score') double score,
      List<AnswerResultDto> result,
      AnswerReviewDto review,
      @TestTypeConverter() TestType type,
      @JsonKey(name: 'mocktest_referral', defaultValue: '') String referral});

  $AnswerReviewDtoCopyWith<$Res> get review;
}

/// @nodoc
class _$TestResultDtoCopyWithImpl<$Res, $Val extends TestResultDto>
    implements $TestResultDtoCopyWith<$Res> {
  _$TestResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? result = null,
    Object? review = null,
    Object? type = null,
    Object? referral = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<AnswerResultDto>,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as AnswerReviewDto,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TestType,
      referral: null == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerReviewDtoCopyWith<$Res> get review {
    return $AnswerReviewDtoCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TestResultDtoCopyWith<$Res>
    implements $TestResultDtoCopyWith<$Res> {
  factory _$$_TestResultDtoCopyWith(
          _$_TestResultDto value, $Res Function(_$_TestResultDto) then) =
      __$$_TestResultDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_score') double score,
      List<AnswerResultDto> result,
      AnswerReviewDto review,
      @TestTypeConverter() TestType type,
      @JsonKey(name: 'mocktest_referral', defaultValue: '') String referral});

  @override
  $AnswerReviewDtoCopyWith<$Res> get review;
}

/// @nodoc
class __$$_TestResultDtoCopyWithImpl<$Res>
    extends _$TestResultDtoCopyWithImpl<$Res, _$_TestResultDto>
    implements _$$_TestResultDtoCopyWith<$Res> {
  __$$_TestResultDtoCopyWithImpl(
      _$_TestResultDto _value, $Res Function(_$_TestResultDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? result = null,
    Object? review = null,
    Object? type = null,
    Object? referral = null,
  }) {
    return _then(_$_TestResultDto(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<AnswerResultDto>,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as AnswerReviewDto,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TestType,
      referral: null == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TestResultDto extends _TestResultDto {
  const _$_TestResultDto(
      {@JsonKey(name: 'total_score')
          required this.score,
      required final List<AnswerResultDto> result,
      required this.review,
      @TestTypeConverter()
          required this.type,
      @JsonKey(name: 'mocktest_referral', defaultValue: '')
          required this.referral})
      : _result = result,
        super._();

  factory _$_TestResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_TestResultDtoFromJson(json);

  @override
  @JsonKey(name: 'total_score')
  final double score;
  final List<AnswerResultDto> _result;
  @override
  List<AnswerResultDto> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  final AnswerReviewDto review;
  @override
  @TestTypeConverter()
  final TestType type;
  @override
  @JsonKey(name: 'mocktest_referral', defaultValue: '')
  final String referral;

  @override
  String toString() {
    return 'TestResultDto(score: $score, result: $result, review: $review, type: $type, referral: $referral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestResultDto &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.referral, referral) ||
                other.referral == referral));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score,
      const DeepCollectionEquality().hash(_result), review, type, referral);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestResultDtoCopyWith<_$_TestResultDto> get copyWith =>
      __$$_TestResultDtoCopyWithImpl<_$_TestResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestResultDtoToJson(
      this,
    );
  }
}

abstract class _TestResultDto extends TestResultDto {
  const factory _TestResultDto(
      {@JsonKey(name: 'total_score')
          required final double score,
      required final List<AnswerResultDto> result,
      required final AnswerReviewDto review,
      @TestTypeConverter()
          required final TestType type,
      @JsonKey(name: 'mocktest_referral', defaultValue: '')
          required final String referral}) = _$_TestResultDto;
  const _TestResultDto._() : super._();

  factory _TestResultDto.fromJson(Map<String, dynamic> json) =
      _$_TestResultDto.fromJson;

  @override
  @JsonKey(name: 'total_score')
  double get score;
  @override
  List<AnswerResultDto> get result;
  @override
  AnswerReviewDto get review;
  @override
  @TestTypeConverter()
  TestType get type;
  @override
  @JsonKey(name: 'mocktest_referral', defaultValue: '')
  String get referral;
  @override
  @JsonKey(ignore: true)
  _$$_TestResultDtoCopyWith<_$_TestResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
