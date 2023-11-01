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
      {@JsonKey(name: 'test_id', defaultValue: 0) int id,
      @JsonKey(name: 'data', defaultValue: [])
      List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false) bool done});
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
abstract class _$$TestContentDtoImplCopyWith<$Res>
    implements $TestContentDtoCopyWith<$Res> {
  factory _$$TestContentDtoImplCopyWith(_$TestContentDtoImpl value,
          $Res Function(_$TestContentDtoImpl) then) =
      __$$TestContentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'test_id', defaultValue: 0) int id,
      @JsonKey(name: 'data', defaultValue: [])
      List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false) bool done});
}

/// @nodoc
class __$$TestContentDtoImplCopyWithImpl<$Res>
    extends _$TestContentDtoCopyWithImpl<$Res, _$TestContentDtoImpl>
    implements _$$TestContentDtoImplCopyWith<$Res> {
  __$$TestContentDtoImplCopyWithImpl(
      _$TestContentDtoImpl _value, $Res Function(_$TestContentDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questions = null,
    Object? done = null,
  }) {
    return _then(_$TestContentDtoImpl(
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
class _$TestContentDtoImpl extends _TestContentDto {
  const _$TestContentDtoImpl(
      {@JsonKey(name: 'test_id', defaultValue: 0) required this.id,
      @JsonKey(name: 'data', defaultValue: [])
      required final List<Map<String, dynamic>> questions,
      @JsonKey(defaultValue: false) required this.done})
      : _questions = questions,
        super._();

  factory _$TestContentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestContentDtoImplFromJson(json);

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
            other is _$TestContentDtoImpl &&
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
  _$$TestContentDtoImplCopyWith<_$TestContentDtoImpl> get copyWith =>
      __$$TestContentDtoImplCopyWithImpl<_$TestContentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestContentDtoImplToJson(
      this,
    );
  }
}

abstract class _TestContentDto extends TestContentDto {
  const factory _TestContentDto(
          {@JsonKey(name: 'test_id', defaultValue: 0) required final int id,
          @JsonKey(name: 'data', defaultValue: [])
          required final List<Map<String, dynamic>> questions,
          @JsonKey(defaultValue: false) required final bool done}) =
      _$TestContentDtoImpl;
  const _TestContentDto._() : super._();

  factory _TestContentDto.fromJson(Map<String, dynamic> json) =
      _$TestContentDtoImpl.fromJson;

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
  _$$TestContentDtoImplCopyWith<_$TestContentDtoImpl> get copyWith =>
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
      @JsonKey(name: 'answer_keys') List<Map<String, dynamic>> answers,
      @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
      int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level', defaultValue: 0) int difficultyLevel,
      @JsonKey(name: 'learning_point_id', defaultValue: 0) int learningPointId,
      @JsonKey(name: 'topic_id', defaultValue: 0) int topicId,
      @JsonKey(name: 'topic_name', defaultValue: '') String topicName,
      @JsonKey(name: 'category_id', defaultValue: 0) int categoryId,
      @JsonKey(name: 'category_name', defaultValue: '') String categoryName});
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
abstract class _$$QuestionDtoImplCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$QuestionDtoImplCopyWith(
          _$QuestionDtoImpl value, $Res Function(_$QuestionDtoImpl) then) =
      __$$QuestionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      @JsonKey(name: 'answer_keys') List<Map<String, dynamic>> answers,
      @JsonKey(name: 'learning_point_difficulty_id', defaultValue: 0)
      int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level', defaultValue: 0) int difficultyLevel,
      @JsonKey(name: 'learning_point_id', defaultValue: 0) int learningPointId,
      @JsonKey(name: 'topic_id', defaultValue: 0) int topicId,
      @JsonKey(name: 'topic_name', defaultValue: '') String topicName,
      @JsonKey(name: 'category_id', defaultValue: 0) int categoryId,
      @JsonKey(name: 'category_name', defaultValue: '') String categoryName});
}

/// @nodoc
class __$$QuestionDtoImplCopyWithImpl<$Res>
    extends _$QuestionDtoCopyWithImpl<$Res, _$QuestionDtoImpl>
    implements _$$QuestionDtoImplCopyWith<$Res> {
  __$$QuestionDtoImplCopyWithImpl(
      _$QuestionDtoImpl _value, $Res Function(_$QuestionDtoImpl) _then)
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
    return _then(_$QuestionDtoImpl(
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
class _$QuestionDtoImpl extends _QuestionDto {
  const _$QuestionDtoImpl(
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
      @JsonKey(name: 'topic_id', defaultValue: 0) required this.topicId,
      @JsonKey(name: 'topic_name', defaultValue: '') required this.topicName,
      @JsonKey(name: 'category_id', defaultValue: 0) required this.categoryId,
      @JsonKey(name: 'category_name', defaultValue: '')
      required this.categoryName})
      : _answers = answers,
        super._();

  factory _$QuestionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionDtoImplFromJson(json);

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
            other is _$QuestionDtoImpl &&
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
  _$$QuestionDtoImplCopyWith<_$QuestionDtoImpl> get copyWith =>
      __$$QuestionDtoImplCopyWithImpl<_$QuestionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionDtoImplToJson(
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
      @JsonKey(name: 'topic_id', defaultValue: 0) required final int topicId,
      @JsonKey(name: 'topic_name', defaultValue: '')
      required final String topicName,
      @JsonKey(name: 'category_id', defaultValue: 0)
      required final int categoryId,
      @JsonKey(name: 'category_name', defaultValue: '')
      required final String categoryName}) = _$QuestionDtoImpl;
  const _QuestionDto._() : super._();

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$QuestionDtoImpl.fromJson;

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
  _$$QuestionDtoImplCopyWith<_$QuestionDtoImpl> get copyWith =>
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
abstract class _$$AnswerDtoImplCopyWith<$Res>
    implements $AnswerDtoCopyWith<$Res> {
  factory _$$AnswerDtoImplCopyWith(
          _$AnswerDtoImpl value, $Res Function(_$AnswerDtoImpl) then) =
      __$$AnswerDtoImplCopyWithImpl<$Res>;
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
class __$$AnswerDtoImplCopyWithImpl<$Res>
    extends _$AnswerDtoCopyWithImpl<$Res, _$AnswerDtoImpl>
    implements _$$AnswerDtoImplCopyWith<$Res> {
  __$$AnswerDtoImplCopyWithImpl(
      _$AnswerDtoImpl _value, $Res Function(_$AnswerDtoImpl) _then)
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
    return _then(_$AnswerDtoImpl(
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
class _$AnswerDtoImpl extends _AnswerDto {
  const _$AnswerDtoImpl(
      {required this.id,
      required this.value,
      @JsonKey(defaultValue: 0) required this.order,
      @JsonKey(defaultValue: false, name: 'is_correct') required this.isCorrect,
      required this.content})
      : super._();

  factory _$AnswerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerDtoImplFromJson(json);

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
            other is _$AnswerDtoImpl &&
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
  _$$AnswerDtoImplCopyWith<_$AnswerDtoImpl> get copyWith =>
      __$$AnswerDtoImplCopyWithImpl<_$AnswerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerDtoImplToJson(
      this,
    );
  }
}

abstract class _AnswerDto extends AnswerDto {
  const factory _AnswerDto(
      {required final int id,
      required final String value,
      @JsonKey(defaultValue: 0) required final int order,
      @JsonKey(defaultValue: false, name: 'is_correct')
      required final bool isCorrect,
      required final String content}) = _$AnswerDtoImpl;
  const _AnswerDto._() : super._();

  factory _AnswerDto.fromJson(Map<String, dynamic> json) =
      _$AnswerDtoImpl.fromJson;

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
  _$$AnswerDtoImplCopyWith<_$AnswerDtoImpl> get copyWith =>
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
abstract class _$$AnswerResultDtoImplCopyWith<$Res>
    implements $AnswerResultDtoCopyWith<$Res> {
  factory _$$AnswerResultDtoImplCopyWith(_$AnswerResultDtoImpl value,
          $Res Function(_$AnswerResultDtoImpl) then) =
      __$$AnswerResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'question_id') int questionId,
      int score});
}

/// @nodoc
class __$$AnswerResultDtoImplCopyWithImpl<$Res>
    extends _$AnswerResultDtoCopyWithImpl<$Res, _$AnswerResultDtoImpl>
    implements _$$AnswerResultDtoImplCopyWith<$Res> {
  __$$AnswerResultDtoImplCopyWithImpl(
      _$AnswerResultDtoImpl _value, $Res Function(_$AnswerResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topicId = null,
    Object? categoryId = null,
    Object? questionId = null,
    Object? score = null,
  }) {
    return _then(_$AnswerResultDtoImpl(
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
class _$AnswerResultDtoImpl extends _AnswerResultDto {
  const _$AnswerResultDtoImpl(
      {@JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'question_id') required this.questionId,
      required this.score})
      : super._();

  factory _$AnswerResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerResultDtoImplFromJson(json);

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
            other is _$AnswerResultDtoImpl &&
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
  _$$AnswerResultDtoImplCopyWith<_$AnswerResultDtoImpl> get copyWith =>
      __$$AnswerResultDtoImplCopyWithImpl<_$AnswerResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerResultDtoImplToJson(
      this,
    );
  }
}

abstract class _AnswerResultDto extends AnswerResultDto {
  const factory _AnswerResultDto(
      {@JsonKey(name: 'topic_id') required final int topicId,
      @JsonKey(name: 'category_id') required final int categoryId,
      @JsonKey(name: 'question_id') required final int questionId,
      required final int score}) = _$AnswerResultDtoImpl;
  const _AnswerResultDto._() : super._();

  factory _AnswerResultDto.fromJson(Map<String, dynamic> json) =
      _$AnswerResultDtoImpl.fromJson;

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
  _$$AnswerResultDtoImplCopyWith<_$AnswerResultDtoImpl> get copyWith =>
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
abstract class _$$AnswerReviewDtoImplCopyWith<$Res>
    implements $AnswerReviewDtoCopyWith<$Res> {
  factory _$$AnswerReviewDtoImplCopyWith(_$AnswerReviewDtoImpl value,
          $Res Function(_$AnswerReviewDtoImpl) then) =
      __$$AnswerReviewDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'selected_answer') List<int> selectedAnswers,
      @JsonKey(name: 'right_answer') List<int> rightAnswers});
}

/// @nodoc
class __$$AnswerReviewDtoImplCopyWithImpl<$Res>
    extends _$AnswerReviewDtoCopyWithImpl<$Res, _$AnswerReviewDtoImpl>
    implements _$$AnswerReviewDtoImplCopyWith<$Res> {
  __$$AnswerReviewDtoImplCopyWithImpl(
      _$AnswerReviewDtoImpl _value, $Res Function(_$AnswerReviewDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedAnswers = null,
    Object? rightAnswers = null,
  }) {
    return _then(_$AnswerReviewDtoImpl(
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
class _$AnswerReviewDtoImpl extends _AnswerReviewDto {
  const _$AnswerReviewDtoImpl(
      {@JsonKey(name: 'selected_answer')
      required final List<int> selectedAnswers,
      @JsonKey(name: 'right_answer') required final List<int> rightAnswers})
      : _selectedAnswers = selectedAnswers,
        _rightAnswers = rightAnswers,
        super._();

  factory _$AnswerReviewDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnswerReviewDtoImplFromJson(json);

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
            other is _$AnswerReviewDtoImpl &&
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
  _$$AnswerReviewDtoImplCopyWith<_$AnswerReviewDtoImpl> get copyWith =>
      __$$AnswerReviewDtoImplCopyWithImpl<_$AnswerReviewDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnswerReviewDtoImplToJson(
      this,
    );
  }
}

abstract class _AnswerReviewDto extends AnswerReviewDto {
  const factory _AnswerReviewDto(
      {@JsonKey(name: 'selected_answer')
      required final List<int> selectedAnswers,
      @JsonKey(name: 'right_answer')
      required final List<int> rightAnswers}) = _$AnswerReviewDtoImpl;
  const _AnswerReviewDto._() : super._();

  factory _AnswerReviewDto.fromJson(Map<String, dynamic> json) =
      _$AnswerReviewDtoImpl.fromJson;

  @override
  @JsonKey(name: 'selected_answer')
  List<int> get selectedAnswers;
  @override
  @JsonKey(name: 'right_answer')
  List<int> get rightAnswers;
  @override
  @JsonKey(ignore: true)
  _$$AnswerReviewDtoImplCopyWith<_$AnswerReviewDtoImpl> get copyWith =>
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
abstract class _$$TestResultDtoImplCopyWith<$Res>
    implements $TestResultDtoCopyWith<$Res> {
  factory _$$TestResultDtoImplCopyWith(
          _$TestResultDtoImpl value, $Res Function(_$TestResultDtoImpl) then) =
      __$$TestResultDtoImplCopyWithImpl<$Res>;
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
class __$$TestResultDtoImplCopyWithImpl<$Res>
    extends _$TestResultDtoCopyWithImpl<$Res, _$TestResultDtoImpl>
    implements _$$TestResultDtoImplCopyWith<$Res> {
  __$$TestResultDtoImplCopyWithImpl(
      _$TestResultDtoImpl _value, $Res Function(_$TestResultDtoImpl) _then)
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
    return _then(_$TestResultDtoImpl(
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
class _$TestResultDtoImpl extends _TestResultDto {
  const _$TestResultDtoImpl(
      {@JsonKey(name: 'total_score') required this.score,
      required final List<AnswerResultDto> result,
      required this.review,
      @TestTypeConverter() required this.type,
      @JsonKey(name: 'mocktest_referral', defaultValue: '')
      required this.referral})
      : _result = result,
        super._();

  factory _$TestResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultDtoImplFromJson(json);

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
            other is _$TestResultDtoImpl &&
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
  _$$TestResultDtoImplCopyWith<_$TestResultDtoImpl> get copyWith =>
      __$$TestResultDtoImplCopyWithImpl<_$TestResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResultDtoImplToJson(
      this,
    );
  }
}

abstract class _TestResultDto extends TestResultDto {
  const factory _TestResultDto(
      {@JsonKey(name: 'total_score') required final double score,
      required final List<AnswerResultDto> result,
      required final AnswerReviewDto review,
      @TestTypeConverter() required final TestType type,
      @JsonKey(name: 'mocktest_referral', defaultValue: '')
      required final String referral}) = _$TestResultDtoImpl;
  const _TestResultDto._() : super._();

  factory _TestResultDto.fromJson(Map<String, dynamic> json) =
      _$TestResultDtoImpl.fromJson;

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
  _$$TestResultDtoImplCopyWith<_$TestResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MockTestItemDto _$MockTestItemDtoFromJson(Map<String, dynamic> json) {
  return _MockTestItemDto.fromJson(json);
}

/// @nodoc
mixin _$MockTestItemDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_date')
  String get createdDate => throw _privateConstructorUsedError;
  MockTestStatus get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  double get score => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MockTestItemDtoCopyWith<MockTestItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockTestItemDtoCopyWith<$Res> {
  factory $MockTestItemDtoCopyWith(
          MockTestItemDto value, $Res Function(MockTestItemDto) then) =
      _$MockTestItemDtoCopyWithImpl<$Res, MockTestItemDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_date') String createdDate,
      MockTestStatus status,
      @JsonKey(defaultValue: 0) double score,
      @JsonKey(defaultValue: 0) int index});
}

/// @nodoc
class _$MockTestItemDtoCopyWithImpl<$Res, $Val extends MockTestItemDto>
    implements $MockTestItemDtoCopyWith<$Res> {
  _$MockTestItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdDate = null,
    Object? status = null,
    Object? score = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MockTestStatus,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MockTestItemDtoImplCopyWith<$Res>
    implements $MockTestItemDtoCopyWith<$Res> {
  factory _$$MockTestItemDtoImplCopyWith(_$MockTestItemDtoImpl value,
          $Res Function(_$MockTestItemDtoImpl) then) =
      __$$MockTestItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_date') String createdDate,
      MockTestStatus status,
      @JsonKey(defaultValue: 0) double score,
      @JsonKey(defaultValue: 0) int index});
}

/// @nodoc
class __$$MockTestItemDtoImplCopyWithImpl<$Res>
    extends _$MockTestItemDtoCopyWithImpl<$Res, _$MockTestItemDtoImpl>
    implements _$$MockTestItemDtoImplCopyWith<$Res> {
  __$$MockTestItemDtoImplCopyWithImpl(
      _$MockTestItemDtoImpl _value, $Res Function(_$MockTestItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdDate = null,
    Object? status = null,
    Object? score = null,
    Object? index = null,
  }) {
    return _then(_$MockTestItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MockTestStatus,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MockTestItemDtoImpl extends _MockTestItemDto {
  const _$MockTestItemDtoImpl(
      {required this.id,
      @JsonKey(name: 'created_date') required this.createdDate,
      required this.status,
      @JsonKey(defaultValue: 0) required this.score,
      @JsonKey(defaultValue: 0) required this.index})
      : super._();

  factory _$MockTestItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MockTestItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_date')
  final String createdDate;
  @override
  final MockTestStatus status;
  @override
  @JsonKey(defaultValue: 0)
  final double score;
  @override
  @JsonKey(defaultValue: 0)
  final int index;

  @override
  String toString() {
    return 'MockTestItemDto(id: $id, createdDate: $createdDate, status: $status, score: $score, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockTestItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdDate, status, score, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MockTestItemDtoImplCopyWith<_$MockTestItemDtoImpl> get copyWith =>
      __$$MockTestItemDtoImplCopyWithImpl<_$MockTestItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MockTestItemDtoImplToJson(
      this,
    );
  }
}

abstract class _MockTestItemDto extends MockTestItemDto {
  const factory _MockTestItemDto(
          {required final int id,
          @JsonKey(name: 'created_date') required final String createdDate,
          required final MockTestStatus status,
          @JsonKey(defaultValue: 0) required final double score,
          @JsonKey(defaultValue: 0) required final int index}) =
      _$MockTestItemDtoImpl;
  const _MockTestItemDto._() : super._();

  factory _MockTestItemDto.fromJson(Map<String, dynamic> json) =
      _$MockTestItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'created_date')
  String get createdDate;
  @override
  MockTestStatus get status;
  @override
  @JsonKey(defaultValue: 0)
  double get score;
  @override
  @JsonKey(defaultValue: 0)
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$MockTestItemDtoImplCopyWith<_$MockTestItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
