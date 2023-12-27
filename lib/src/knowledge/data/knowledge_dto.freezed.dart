// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectDto _$SubjectDtoFromJson(Map<String, dynamic> json) {
  return _SubjectDto.fromJson(json);
}

/// @nodoc
mixin _$SubjectDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  List<ProgramDto> get programs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectDtoCopyWith<SubjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDtoCopyWith<$Res> {
  factory $SubjectDtoCopyWith(
          SubjectDto value, $Res Function(SubjectDto) then) =
      _$SubjectDtoCopyWithImpl<$Res, SubjectDto>;
  @useResult
  $Res call({int id, String name, String label, List<ProgramDto> programs});
}

/// @nodoc
class _$SubjectDtoCopyWithImpl<$Res, $Val extends SubjectDto>
    implements $SubjectDtoCopyWith<$Res> {
  _$SubjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? label = null,
    Object? programs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      programs: null == programs
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectDtoImplCopyWith<$Res>
    implements $SubjectDtoCopyWith<$Res> {
  factory _$$SubjectDtoImplCopyWith(
          _$SubjectDtoImpl value, $Res Function(_$SubjectDtoImpl) then) =
      __$$SubjectDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String label, List<ProgramDto> programs});
}

/// @nodoc
class __$$SubjectDtoImplCopyWithImpl<$Res>
    extends _$SubjectDtoCopyWithImpl<$Res, _$SubjectDtoImpl>
    implements _$$SubjectDtoImplCopyWith<$Res> {
  __$$SubjectDtoImplCopyWithImpl(
      _$SubjectDtoImpl _value, $Res Function(_$SubjectDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? label = null,
    Object? programs = null,
  }) {
    return _then(_$SubjectDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      programs: null == programs
          ? _value._programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectDtoImpl extends _SubjectDto {
  const _$SubjectDtoImpl(
      {required this.id,
      required this.name,
      required this.label,
      required final List<ProgramDto> programs})
      : _programs = programs,
        super._();

  factory _$SubjectDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String label;
  final List<ProgramDto> _programs;
  @override
  List<ProgramDto> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'SubjectDto(id: $id, name: $name, label: $label, programs: $programs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, label,
      const DeepCollectionEquality().hash(_programs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectDtoImplCopyWith<_$SubjectDtoImpl> get copyWith =>
      __$$SubjectDtoImplCopyWithImpl<_$SubjectDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectDtoImplToJson(
      this,
    );
  }
}

abstract class _SubjectDto extends SubjectDto {
  const factory _SubjectDto(
      {required final int id,
      required final String name,
      required final String label,
      required final List<ProgramDto> programs}) = _$SubjectDtoImpl;
  const _SubjectDto._() : super._();

  factory _SubjectDto.fromJson(Map<String, dynamic> json) =
      _$SubjectDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get label;
  @override
  List<ProgramDto> get programs;
  @override
  @JsonKey(ignore: true)
  _$$SubjectDtoImplCopyWith<_$SubjectDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProgramDto _$ProgramDtoFromJson(Map<String, dynamic> json) {
  return _ProgramDto.fromJson(json);
}

/// @nodoc
mixin _$ProgramDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'subject_id')
  int get subjectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramDtoCopyWith<ProgramDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDtoCopyWith<$Res> {
  factory $ProgramDtoCopyWith(
          ProgramDto value, $Res Function(ProgramDto) then) =
      _$ProgramDtoCopyWithImpl<$Res, ProgramDto>;
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'subject_id') int subjectId});
}

/// @nodoc
class _$ProgramDtoCopyWithImpl<$Res, $Val extends ProgramDto>
    implements $ProgramDtoCopyWith<$Res> {
  _$ProgramDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subjectId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramDtoImplCopyWith<$Res>
    implements $ProgramDtoCopyWith<$Res> {
  factory _$$ProgramDtoImplCopyWith(
          _$ProgramDtoImpl value, $Res Function(_$ProgramDtoImpl) then) =
      __$$ProgramDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'subject_id') int subjectId});
}

/// @nodoc
class __$$ProgramDtoImplCopyWithImpl<$Res>
    extends _$ProgramDtoCopyWithImpl<$Res, _$ProgramDtoImpl>
    implements _$$ProgramDtoImplCopyWith<$Res> {
  __$$ProgramDtoImplCopyWithImpl(
      _$ProgramDtoImpl _value, $Res Function(_$ProgramDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subjectId = null,
  }) {
    return _then(_$ProgramDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: null == subjectId
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProgramDtoImpl extends _ProgramDto {
  const _$ProgramDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'subject_id') required this.subjectId})
      : super._();

  factory _$ProgramDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'subject_id')
  final int subjectId;

  @override
  String toString() {
    return 'ProgramDto(id: $id, name: $name, subjectId: $subjectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.subjectId, subjectId) ||
                other.subjectId == subjectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, subjectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDtoImplCopyWith<_$ProgramDtoImpl> get copyWith =>
      __$$ProgramDtoImplCopyWithImpl<_$ProgramDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDtoImplToJson(
      this,
    );
  }
}

abstract class _ProgramDto extends ProgramDto {
  const factory _ProgramDto(
          {required final int id,
          required final String name,
          @JsonKey(name: 'subject_id') required final int subjectId}) =
      _$ProgramDtoImpl;
  const _ProgramDto._() : super._();

  factory _ProgramDto.fromJson(Map<String, dynamic> json) =
      _$ProgramDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'subject_id')
  int get subjectId;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDtoImplCopyWith<_$ProgramDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonItemDto _$LessonItemDtoFromJson(Map<String, dynamic> json) {
  return _LessonItemDto.fromJson(json);
}

/// @nodoc
mixin _$LessonItemDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'new')
  bool get isNew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonItemDtoCopyWith<LessonItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonItemDtoCopyWith<$Res> {
  factory $LessonItemDtoCopyWith(
          LessonItemDto value, $Res Function(LessonItemDto) then) =
      _$LessonItemDtoCopyWithImpl<$Res, LessonItemDto>;
  @useResult
  $Res call({String id, String name, @JsonKey(name: 'new') bool isNew});
}

/// @nodoc
class _$LessonItemDtoCopyWithImpl<$Res, $Val extends LessonItemDto>
    implements $LessonItemDtoCopyWith<$Res> {
  _$LessonItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isNew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonItemDtoImplCopyWith<$Res>
    implements $LessonItemDtoCopyWith<$Res> {
  factory _$$LessonItemDtoImplCopyWith(
          _$LessonItemDtoImpl value, $Res Function(_$LessonItemDtoImpl) then) =
      __$$LessonItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, @JsonKey(name: 'new') bool isNew});
}

/// @nodoc
class __$$LessonItemDtoImplCopyWithImpl<$Res>
    extends _$LessonItemDtoCopyWithImpl<$Res, _$LessonItemDtoImpl>
    implements _$$LessonItemDtoImplCopyWith<$Res> {
  __$$LessonItemDtoImplCopyWithImpl(
      _$LessonItemDtoImpl _value, $Res Function(_$LessonItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isNew = null,
  }) {
    return _then(_$LessonItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonItemDtoImpl extends _LessonItemDto {
  const _$LessonItemDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'new') required this.isNew})
      : super._();

  factory _$LessonItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonItemDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'new')
  final bool isNew;

  @override
  String toString() {
    return 'LessonItemDto(id: $id, name: $name, isNew: $isNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isNew, isNew) || other.isNew == isNew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonItemDtoImplCopyWith<_$LessonItemDtoImpl> get copyWith =>
      __$$LessonItemDtoImplCopyWithImpl<_$LessonItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonItemDtoImplToJson(
      this,
    );
  }
}

abstract class _LessonItemDto extends LessonItemDto {
  const factory _LessonItemDto(
      {required final String id,
      required final String name,
      @JsonKey(name: 'new') required final bool isNew}) = _$LessonItemDtoImpl;
  const _LessonItemDto._() : super._();

  factory _LessonItemDto.fromJson(Map<String, dynamic> json) =
      _$LessonItemDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'new')
  bool get isNew;
  @override
  @JsonKey(ignore: true)
  _$$LessonItemDtoImplCopyWith<_$LessonItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningGoalPathDto _$LearningGoalPathDtoFromJson(Map<String, dynamic> json) {
  return _LearningGoalPathDto.fromJson(json);
}

/// @nodoc
mixin _$LearningGoalPathDto {
  List<LearningGoalCategoryDto> get categories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'complete_percentage')
  double get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_user', defaultValue: false)
  bool get isNewUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningGoalPathDtoCopyWith<LearningGoalPathDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningGoalPathDtoCopyWith<$Res> {
  factory $LearningGoalPathDtoCopyWith(
          LearningGoalPathDto value, $Res Function(LearningGoalPathDto) then) =
      _$LearningGoalPathDtoCopyWithImpl<$Res, LearningGoalPathDto>;
  @useResult
  $Res call(
      {List<LearningGoalCategoryDto> categories,
      @JsonKey(name: 'complete_percentage') double progress,
      @JsonKey(name: 'new_user', defaultValue: false) bool isNewUser});
}

/// @nodoc
class _$LearningGoalPathDtoCopyWithImpl<$Res, $Val extends LearningGoalPathDto>
    implements $LearningGoalPathDtoCopyWith<$Res> {
  _$LearningGoalPathDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? progress = null,
    Object? isNewUser = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<LearningGoalCategoryDto>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningGoalPathDtoImplCopyWith<$Res>
    implements $LearningGoalPathDtoCopyWith<$Res> {
  factory _$$LearningGoalPathDtoImplCopyWith(_$LearningGoalPathDtoImpl value,
          $Res Function(_$LearningGoalPathDtoImpl) then) =
      __$$LearningGoalPathDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<LearningGoalCategoryDto> categories,
      @JsonKey(name: 'complete_percentage') double progress,
      @JsonKey(name: 'new_user', defaultValue: false) bool isNewUser});
}

/// @nodoc
class __$$LearningGoalPathDtoImplCopyWithImpl<$Res>
    extends _$LearningGoalPathDtoCopyWithImpl<$Res, _$LearningGoalPathDtoImpl>
    implements _$$LearningGoalPathDtoImplCopyWith<$Res> {
  __$$LearningGoalPathDtoImplCopyWithImpl(_$LearningGoalPathDtoImpl _value,
      $Res Function(_$LearningGoalPathDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? progress = null,
    Object? isNewUser = null,
  }) {
    return _then(_$LearningGoalPathDtoImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<LearningGoalCategoryDto>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningGoalPathDtoImpl extends _LearningGoalPathDto {
  const _$LearningGoalPathDtoImpl(
      {required final List<LearningGoalCategoryDto> categories,
      @JsonKey(name: 'complete_percentage') required this.progress,
      @JsonKey(name: 'new_user', defaultValue: false) required this.isNewUser})
      : _categories = categories,
        super._();

  factory _$LearningGoalPathDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningGoalPathDtoImplFromJson(json);

  final List<LearningGoalCategoryDto> _categories;
  @override
  List<LearningGoalCategoryDto> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey(name: 'complete_percentage')
  final double progress;
  @override
  @JsonKey(name: 'new_user', defaultValue: false)
  final bool isNewUser;

  @override
  String toString() {
    return 'LearningGoalPathDto(categories: $categories, progress: $progress, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGoalPathDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_categories), progress, isNewUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGoalPathDtoImplCopyWith<_$LearningGoalPathDtoImpl> get copyWith =>
      __$$LearningGoalPathDtoImplCopyWithImpl<_$LearningGoalPathDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningGoalPathDtoImplToJson(
      this,
    );
  }
}

abstract class _LearningGoalPathDto extends LearningGoalPathDto {
  const factory _LearningGoalPathDto(
      {required final List<LearningGoalCategoryDto> categories,
      @JsonKey(name: 'complete_percentage') required final double progress,
      @JsonKey(name: 'new_user', defaultValue: false)
      required final bool isNewUser}) = _$LearningGoalPathDtoImpl;
  const _LearningGoalPathDto._() : super._();

  factory _LearningGoalPathDto.fromJson(Map<String, dynamic> json) =
      _$LearningGoalPathDtoImpl.fromJson;

  @override
  List<LearningGoalCategoryDto> get categories;
  @override
  @JsonKey(name: 'complete_percentage')
  double get progress;
  @override
  @JsonKey(name: 'new_user', defaultValue: false)
  bool get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$LearningGoalPathDtoImplCopyWith<_$LearningGoalPathDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningGoalCategoryDto _$LearningGoalCategoryDtoFromJson(
    Map<String, dynamic> json) {
  return _LearningGoalCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$LearningGoalCategoryDto {
  @JsonKey(name: 'completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  CategoryDto get categoryDto => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_list')
  List<LessonItemDto> get lessonsDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningGoalCategoryDtoCopyWith<LearningGoalCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningGoalCategoryDtoCopyWith<$Res> {
  factory $LearningGoalCategoryDtoCopyWith(LearningGoalCategoryDto value,
          $Res Function(LearningGoalCategoryDto) then) =
      _$LearningGoalCategoryDtoCopyWithImpl<$Res, LearningGoalCategoryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'completed') bool isCompleted,
      @JsonKey(name: 'category') CategoryDto categoryDto,
      @JsonKey(name: 'lesson_list') List<LessonItemDto> lessonsDto});

  $CategoryDtoCopyWith<$Res> get categoryDto;
}

/// @nodoc
class _$LearningGoalCategoryDtoCopyWithImpl<$Res,
        $Val extends LearningGoalCategoryDto>
    implements $LearningGoalCategoryDtoCopyWith<$Res> {
  _$LearningGoalCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
    Object? categoryDto = null,
    Object? lessonsDto = null,
  }) {
    return _then(_value.copyWith(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryDto: null == categoryDto
          ? _value.categoryDto
          : categoryDto // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      lessonsDto: null == lessonsDto
          ? _value.lessonsDto
          : lessonsDto // ignore: cast_nullable_to_non_nullable
              as List<LessonItemDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get categoryDto {
    return $CategoryDtoCopyWith<$Res>(_value.categoryDto, (value) {
      return _then(_value.copyWith(categoryDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LearningGoalCategoryDtoImplCopyWith<$Res>
    implements $LearningGoalCategoryDtoCopyWith<$Res> {
  factory _$$LearningGoalCategoryDtoImplCopyWith(
          _$LearningGoalCategoryDtoImpl value,
          $Res Function(_$LearningGoalCategoryDtoImpl) then) =
      __$$LearningGoalCategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'completed') bool isCompleted,
      @JsonKey(name: 'category') CategoryDto categoryDto,
      @JsonKey(name: 'lesson_list') List<LessonItemDto> lessonsDto});

  @override
  $CategoryDtoCopyWith<$Res> get categoryDto;
}

/// @nodoc
class __$$LearningGoalCategoryDtoImplCopyWithImpl<$Res>
    extends _$LearningGoalCategoryDtoCopyWithImpl<$Res,
        _$LearningGoalCategoryDtoImpl>
    implements _$$LearningGoalCategoryDtoImplCopyWith<$Res> {
  __$$LearningGoalCategoryDtoImplCopyWithImpl(
      _$LearningGoalCategoryDtoImpl _value,
      $Res Function(_$LearningGoalCategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
    Object? categoryDto = null,
    Object? lessonsDto = null,
  }) {
    return _then(_$LearningGoalCategoryDtoImpl(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      categoryDto: null == categoryDto
          ? _value.categoryDto
          : categoryDto // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      lessonsDto: null == lessonsDto
          ? _value._lessonsDto
          : lessonsDto // ignore: cast_nullable_to_non_nullable
              as List<LessonItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningGoalCategoryDtoImpl extends _LearningGoalCategoryDto {
  const _$LearningGoalCategoryDtoImpl(
      {@JsonKey(name: 'completed') required this.isCompleted,
      @JsonKey(name: 'category') required this.categoryDto,
      @JsonKey(name: 'lesson_list')
      required final List<LessonItemDto> lessonsDto})
      : _lessonsDto = lessonsDto,
        super._();

  factory _$LearningGoalCategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningGoalCategoryDtoImplFromJson(json);

  @override
  @JsonKey(name: 'completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'category')
  final CategoryDto categoryDto;
  final List<LessonItemDto> _lessonsDto;
  @override
  @JsonKey(name: 'lesson_list')
  List<LessonItemDto> get lessonsDto {
    if (_lessonsDto is EqualUnmodifiableListView) return _lessonsDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessonsDto);
  }

  @override
  String toString() {
    return 'LearningGoalCategoryDto(isCompleted: $isCompleted, categoryDto: $categoryDto, lessonsDto: $lessonsDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGoalCategoryDtoImpl &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.categoryDto, categoryDto) ||
                other.categoryDto == categoryDto) &&
            const DeepCollectionEquality()
                .equals(other._lessonsDto, _lessonsDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCompleted, categoryDto,
      const DeepCollectionEquality().hash(_lessonsDto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGoalCategoryDtoImplCopyWith<_$LearningGoalCategoryDtoImpl>
      get copyWith => __$$LearningGoalCategoryDtoImplCopyWithImpl<
          _$LearningGoalCategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningGoalCategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _LearningGoalCategoryDto extends LearningGoalCategoryDto {
  const factory _LearningGoalCategoryDto(
          {@JsonKey(name: 'completed') required final bool isCompleted,
          @JsonKey(name: 'category') required final CategoryDto categoryDto,
          @JsonKey(name: 'lesson_list')
          required final List<LessonItemDto> lessonsDto}) =
      _$LearningGoalCategoryDtoImpl;
  const _LearningGoalCategoryDto._() : super._();

  factory _LearningGoalCategoryDto.fromJson(Map<String, dynamic> json) =
      _$LearningGoalCategoryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'completed')
  bool get isCompleted;
  @override
  @JsonKey(name: 'category')
  CategoryDto get categoryDto;
  @override
  @JsonKey(name: 'lesson_list')
  List<LessonItemDto> get lessonsDto;
  @override
  @JsonKey(ignore: true)
  _$$LearningGoalCategoryDtoImplCopyWith<_$LearningGoalCategoryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LessonGroupDto _$LessonGroupDtoFromJson(Map<String, dynamic> json) {
  return _LessonGroupDto.fromJson(json);
}

/// @nodoc
mixin _$LessonGroupDto {
  String get id => throw _privateConstructorUsedError;
  List<LessonInfoDto> get lessonInfos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonGroupDtoCopyWith<LessonGroupDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonGroupDtoCopyWith<$Res> {
  factory $LessonGroupDtoCopyWith(
          LessonGroupDto value, $Res Function(LessonGroupDto) then) =
      _$LessonGroupDtoCopyWithImpl<$Res, LessonGroupDto>;
  @useResult
  $Res call({String id, List<LessonInfoDto> lessonInfos});
}

/// @nodoc
class _$LessonGroupDtoCopyWithImpl<$Res, $Val extends LessonGroupDto>
    implements $LessonGroupDtoCopyWith<$Res> {
  _$LessonGroupDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonInfos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonInfos: null == lessonInfos
          ? _value.lessonInfos
          : lessonInfos // ignore: cast_nullable_to_non_nullable
              as List<LessonInfoDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonGroupDtoImplCopyWith<$Res>
    implements $LessonGroupDtoCopyWith<$Res> {
  factory _$$LessonGroupDtoImplCopyWith(_$LessonGroupDtoImpl value,
          $Res Function(_$LessonGroupDtoImpl) then) =
      __$$LessonGroupDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<LessonInfoDto> lessonInfos});
}

/// @nodoc
class __$$LessonGroupDtoImplCopyWithImpl<$Res>
    extends _$LessonGroupDtoCopyWithImpl<$Res, _$LessonGroupDtoImpl>
    implements _$$LessonGroupDtoImplCopyWith<$Res> {
  __$$LessonGroupDtoImplCopyWithImpl(
      _$LessonGroupDtoImpl _value, $Res Function(_$LessonGroupDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonInfos = null,
  }) {
    return _then(_$LessonGroupDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonInfos: null == lessonInfos
          ? _value._lessonInfos
          : lessonInfos // ignore: cast_nullable_to_non_nullable
              as List<LessonInfoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonGroupDtoImpl extends _LessonGroupDto {
  const _$LessonGroupDtoImpl(
      {required this.id, required final List<LessonInfoDto> lessonInfos})
      : _lessonInfos = lessonInfos,
        super._();

  factory _$LessonGroupDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonGroupDtoImplFromJson(json);

  @override
  final String id;
  final List<LessonInfoDto> _lessonInfos;
  @override
  List<LessonInfoDto> get lessonInfos {
    if (_lessonInfos is EqualUnmodifiableListView) return _lessonInfos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessonInfos);
  }

  @override
  String toString() {
    return 'LessonGroupDto(id: $id, lessonInfos: $lessonInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonGroupDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._lessonInfos, _lessonInfos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_lessonInfos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonGroupDtoImplCopyWith<_$LessonGroupDtoImpl> get copyWith =>
      __$$LessonGroupDtoImplCopyWithImpl<_$LessonGroupDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonGroupDtoImplToJson(
      this,
    );
  }
}

abstract class _LessonGroupDto extends LessonGroupDto {
  const factory _LessonGroupDto(
      {required final String id,
      required final List<LessonInfoDto> lessonInfos}) = _$LessonGroupDtoImpl;
  const _LessonGroupDto._() : super._();

  factory _LessonGroupDto.fromJson(Map<String, dynamic> json) =
      _$LessonGroupDtoImpl.fromJson;

  @override
  String get id;
  @override
  List<LessonInfoDto> get lessonInfos;
  @override
  @JsonKey(ignore: true)
  _$$LessonGroupDtoImplCopyWith<_$LessonGroupDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDtoImplCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$CategoryDtoImplCopyWith(
          _$CategoryDtoImpl value, $Res Function(_$CategoryDtoImpl) then) =
      __$$CategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$CategoryDtoImplCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$CategoryDtoImpl>
    implements _$$CategoryDtoImplCopyWith<$Res> {
  __$$CategoryDtoImplCopyWithImpl(
      _$CategoryDtoImpl _value, $Res Function(_$CategoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CategoryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDtoImpl extends _CategoryDto {
  const _$CategoryDtoImpl({required this.id, required this.name}) : super._();

  factory _$CategoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      __$$CategoryDtoImplCopyWithImpl<_$CategoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDtoImplToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {required final int id, required final String name}) = _$CategoryDtoImpl;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$CategoryDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDtoImplCopyWith<_$CategoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopicDto _$TopicDtoFromJson(Map<String, dynamic> json) {
  return _TopicDto.fromJson(json);
}

/// @nodoc
mixin _$TopicDto {
  @JsonKey(defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopicDtoCopyWith<TopicDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicDtoCopyWith<$Res> {
  factory $TopicDtoCopyWith(TopicDto value, $Res Function(TopicDto) then) =
      _$TopicDtoCopyWithImpl<$Res, TopicDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class _$TopicDtoCopyWithImpl<$Res, $Val extends TopicDto>
    implements $TopicDtoCopyWith<$Res> {
  _$TopicDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopicDtoImplCopyWith<$Res>
    implements $TopicDtoCopyWith<$Res> {
  factory _$$TopicDtoImplCopyWith(
          _$TopicDtoImpl value, $Res Function(_$TopicDtoImpl) then) =
      __$$TopicDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class __$$TopicDtoImplCopyWithImpl<$Res>
    extends _$TopicDtoCopyWithImpl<$Res, _$TopicDtoImpl>
    implements _$$TopicDtoImplCopyWith<$Res> {
  __$$TopicDtoImplCopyWithImpl(
      _$TopicDtoImpl _value, $Res Function(_$TopicDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$TopicDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopicDtoImpl extends _TopicDto {
  const _$TopicDtoImpl(
      {@JsonKey(defaultValue: 0) required this.id,
      @JsonKey(defaultValue: '') required this.name})
      : super._();

  factory _$TopicDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopicDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0)
  final int id;
  @override
  @JsonKey(defaultValue: '')
  final String name;

  @override
  String toString() {
    return 'TopicDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopicDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopicDtoImplCopyWith<_$TopicDtoImpl> get copyWith =>
      __$$TopicDtoImplCopyWithImpl<_$TopicDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopicDtoImplToJson(
      this,
    );
  }
}

abstract class _TopicDto extends TopicDto {
  const factory _TopicDto(
      {@JsonKey(defaultValue: 0) required final int id,
      @JsonKey(defaultValue: '') required final String name}) = _$TopicDtoImpl;
  const _TopicDto._() : super._();

  factory _TopicDto.fromJson(Map<String, dynamic> json) =
      _$TopicDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0)
  int get id;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$TopicDtoImplCopyWith<_$TopicDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonInfoDto _$LessonInfoDtoFromJson(Map<String, dynamic> json) {
  return _LessonInfoDto.fromJson(json);
}

/// @nodoc
mixin _$LessonInfoDto {
  CategoryDto get category => throw _privateConstructorUsedError;
  TopicDto get topic => throw _privateConstructorUsedError;
  List<LessonDto> get lessons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonInfoDtoCopyWith<LessonInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonInfoDtoCopyWith<$Res> {
  factory $LessonInfoDtoCopyWith(
          LessonInfoDto value, $Res Function(LessonInfoDto) then) =
      _$LessonInfoDtoCopyWithImpl<$Res, LessonInfoDto>;
  @useResult
  $Res call({CategoryDto category, TopicDto topic, List<LessonDto> lessons});

  $CategoryDtoCopyWith<$Res> get category;
  $TopicDtoCopyWith<$Res> get topic;
}

/// @nodoc
class _$LessonInfoDtoCopyWithImpl<$Res, $Val extends LessonInfoDto>
    implements $LessonInfoDtoCopyWith<$Res> {
  _$LessonInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? topic = null,
    Object? lessons = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TopicDto,
      lessons: null == lessons
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get category {
    return $CategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TopicDtoCopyWith<$Res> get topic {
    return $TopicDtoCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LessonInfoDtoImplCopyWith<$Res>
    implements $LessonInfoDtoCopyWith<$Res> {
  factory _$$LessonInfoDtoImplCopyWith(
          _$LessonInfoDtoImpl value, $Res Function(_$LessonInfoDtoImpl) then) =
      __$$LessonInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryDto category, TopicDto topic, List<LessonDto> lessons});

  @override
  $CategoryDtoCopyWith<$Res> get category;
  @override
  $TopicDtoCopyWith<$Res> get topic;
}

/// @nodoc
class __$$LessonInfoDtoImplCopyWithImpl<$Res>
    extends _$LessonInfoDtoCopyWithImpl<$Res, _$LessonInfoDtoImpl>
    implements _$$LessonInfoDtoImplCopyWith<$Res> {
  __$$LessonInfoDtoImplCopyWithImpl(
      _$LessonInfoDtoImpl _value, $Res Function(_$LessonInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? topic = null,
    Object? lessons = null,
  }) {
    return _then(_$LessonInfoDtoImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TopicDto,
      lessons: null == lessons
          ? _value._lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonInfoDtoImpl extends _LessonInfoDto {
  const _$LessonInfoDtoImpl(
      {required this.category,
      required this.topic,
      required final List<LessonDto> lessons})
      : _lessons = lessons,
        super._();

  factory _$LessonInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonInfoDtoImplFromJson(json);

  @override
  final CategoryDto category;
  @override
  final TopicDto topic;
  final List<LessonDto> _lessons;
  @override
  List<LessonDto> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'LessonInfoDto(category: $category, topic: $topic, lessons: $lessons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonInfoDtoImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, topic,
      const DeepCollectionEquality().hash(_lessons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonInfoDtoImplCopyWith<_$LessonInfoDtoImpl> get copyWith =>
      __$$LessonInfoDtoImplCopyWithImpl<_$LessonInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _LessonInfoDto extends LessonInfoDto {
  const factory _LessonInfoDto(
      {required final CategoryDto category,
      required final TopicDto topic,
      required final List<LessonDto> lessons}) = _$LessonInfoDtoImpl;
  const _LessonInfoDto._() : super._();

  factory _LessonInfoDto.fromJson(Map<String, dynamic> json) =
      _$LessonInfoDtoImpl.fromJson;

  @override
  CategoryDto get category;
  @override
  TopicDto get topic;
  @override
  List<LessonDto> get lessons;
  @override
  @JsonKey(ignore: true)
  _$$LessonInfoDtoImplCopyWith<_$LessonInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonDto _$LessonDtoFromJson(Map<String, dynamic> json) {
  return _LessonDto.fromJson(json);
}

/// @nodoc
mixin _$LessonDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_point_id')
  int get learningPointId => throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_point_difficulty_id')
  int get learningPointDifficultyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_level')
  int get difficultyLevel => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonDtoCopyWith<LessonDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDtoCopyWith<$Res> {
  factory $LessonDtoCopyWith(LessonDto value, $Res Function(LessonDto) then) =
      _$LessonDtoCopyWithImpl<$Res, LessonDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'learning_point_id') int learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
      int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level') int difficultyLevel,
      @JsonKey(defaultValue: '') String content});
}

/// @nodoc
class _$LessonDtoCopyWithImpl<$Res, $Val extends LessonDto>
    implements $LessonDtoCopyWith<$Res> {
  _$LessonDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? learningPointId = null,
    Object? learningPointDifficultyId = null,
    Object? difficultyLevel = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      learningPointId: null == learningPointId
          ? _value.learningPointId
          : learningPointId // ignore: cast_nullable_to_non_nullable
              as int,
      learningPointDifficultyId: null == learningPointDifficultyId
          ? _value.learningPointDifficultyId
          : learningPointDifficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LessonDtoImplCopyWith<$Res>
    implements $LessonDtoCopyWith<$Res> {
  factory _$$LessonDtoImplCopyWith(
          _$LessonDtoImpl value, $Res Function(_$LessonDtoImpl) then) =
      __$$LessonDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'learning_point_id') int learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
      int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level') int difficultyLevel,
      @JsonKey(defaultValue: '') String content});
}

/// @nodoc
class __$$LessonDtoImplCopyWithImpl<$Res>
    extends _$LessonDtoCopyWithImpl<$Res, _$LessonDtoImpl>
    implements _$$LessonDtoImplCopyWith<$Res> {
  __$$LessonDtoImplCopyWithImpl(
      _$LessonDtoImpl _value, $Res Function(_$LessonDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? learningPointId = null,
    Object? learningPointDifficultyId = null,
    Object? difficultyLevel = null,
    Object? content = null,
  }) {
    return _then(_$LessonDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      learningPointId: null == learningPointId
          ? _value.learningPointId
          : learningPointId // ignore: cast_nullable_to_non_nullable
              as int,
      learningPointDifficultyId: null == learningPointDifficultyId
          ? _value.learningPointDifficultyId
          : learningPointDifficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: null == difficultyLevel
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonDtoImpl extends _LessonDto {
  const _$LessonDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'learning_point_id') required this.learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
      required this.learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level') required this.difficultyLevel,
      @JsonKey(defaultValue: '') required this.content})
      : super._();

  factory _$LessonDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'learning_point_id')
  final int learningPointId;
  @override
  @JsonKey(name: 'learning_point_difficulty_id')
  final int learningPointDifficultyId;
  @override
  @JsonKey(name: 'difficulty_level')
  final int difficultyLevel;
  @override
  @JsonKey(defaultValue: '')
  final String content;

  @override
  String toString() {
    return 'LessonDto(id: $id, name: $name, learningPointId: $learningPointId, learningPointDifficultyId: $learningPointDifficultyId, difficultyLevel: $difficultyLevel, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.learningPointId, learningPointId) ||
                other.learningPointId == learningPointId) &&
            (identical(other.learningPointDifficultyId,
                    learningPointDifficultyId) ||
                other.learningPointDifficultyId == learningPointDifficultyId) &&
            (identical(other.difficultyLevel, difficultyLevel) ||
                other.difficultyLevel == difficultyLevel) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, learningPointId,
      learningPointDifficultyId, difficultyLevel, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonDtoImplCopyWith<_$LessonDtoImpl> get copyWith =>
      __$$LessonDtoImplCopyWithImpl<_$LessonDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonDtoImplToJson(
      this,
    );
  }
}

abstract class _LessonDto extends LessonDto {
  const factory _LessonDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'learning_point_id') required final int learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
      required final int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level') required final int difficultyLevel,
      @JsonKey(defaultValue: '')
      required final String content}) = _$LessonDtoImpl;
  const _LessonDto._() : super._();

  factory _LessonDto.fromJson(Map<String, dynamic> json) =
      _$LessonDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'learning_point_id')
  int get learningPointId;
  @override
  @JsonKey(name: 'learning_point_difficulty_id')
  int get learningPointDifficultyId;
  @override
  @JsonKey(name: 'difficulty_level')
  int get difficultyLevel;
  @override
  @JsonKey(defaultValue: '')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$LessonDtoImplCopyWith<_$LessonDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPointDto _$LearningPointDtoFromJson(Map<String, dynamic> json) {
  return _LearningPointDto.fromJson(json);
}

/// @nodoc
mixin _$LearningPointDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'learning_point')
  String get learningPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'difficulty_id')
  int get difficultyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_id')
  int get topicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'topic_name')
  String get topicName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPointDtoCopyWith<LearningPointDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPointDtoCopyWith<$Res> {
  factory $LearningPointDtoCopyWith(
          LearningPointDto value, $Res Function(LearningPointDto) then) =
      _$LearningPointDtoCopyWithImpl<$Res, LearningPointDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'learning_point') String learningPoint,
      @JsonKey(name: 'difficulty_id') int difficultyId,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'topic_name') String topicName});
}

/// @nodoc
class _$LearningPointDtoCopyWithImpl<$Res, $Val extends LearningPointDto>
    implements $LearningPointDtoCopyWith<$Res> {
  _$LearningPointDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? learningPoint = null,
    Object? difficultyId = null,
    Object? topicId = null,
    Object? topicName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      learningPoint: null == learningPoint
          ? _value.learningPoint
          : learningPoint // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyId: null == difficultyId
          ? _value.difficultyId
          : difficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningPointDtoImplCopyWith<$Res>
    implements $LearningPointDtoCopyWith<$Res> {
  factory _$$LearningPointDtoImplCopyWith(_$LearningPointDtoImpl value,
          $Res Function(_$LearningPointDtoImpl) then) =
      __$$LearningPointDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'learning_point') String learningPoint,
      @JsonKey(name: 'difficulty_id') int difficultyId,
      @JsonKey(name: 'topic_id') int topicId,
      @JsonKey(name: 'topic_name') String topicName});
}

/// @nodoc
class __$$LearningPointDtoImplCopyWithImpl<$Res>
    extends _$LearningPointDtoCopyWithImpl<$Res, _$LearningPointDtoImpl>
    implements _$$LearningPointDtoImplCopyWith<$Res> {
  __$$LearningPointDtoImplCopyWithImpl(_$LearningPointDtoImpl _value,
      $Res Function(_$LearningPointDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? learningPoint = null,
    Object? difficultyId = null,
    Object? topicId = null,
    Object? topicName = null,
  }) {
    return _then(_$LearningPointDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      learningPoint: null == learningPoint
          ? _value.learningPoint
          : learningPoint // ignore: cast_nullable_to_non_nullable
              as String,
      difficultyId: null == difficultyId
          ? _value.difficultyId
          : difficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      topicId: null == topicId
          ? _value.topicId
          : topicId // ignore: cast_nullable_to_non_nullable
              as int,
      topicName: null == topicName
          ? _value.topicName
          : topicName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningPointDtoImpl extends _LearningPointDto {
  const _$LearningPointDtoImpl(
      {required this.id,
      @JsonKey(name: 'learning_point') required this.learningPoint,
      @JsonKey(name: 'difficulty_id') required this.difficultyId,
      @JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'topic_name') required this.topicName})
      : super._();

  factory _$LearningPointDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningPointDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'learning_point')
  final String learningPoint;
  @override
  @JsonKey(name: 'difficulty_id')
  final int difficultyId;
  @override
  @JsonKey(name: 'topic_id')
  final int topicId;
  @override
  @JsonKey(name: 'topic_name')
  final String topicName;

  @override
  String toString() {
    return 'LearningPointDto(id: $id, learningPoint: $learningPoint, difficultyId: $difficultyId, topicId: $topicId, topicName: $topicName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningPointDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.learningPoint, learningPoint) ||
                other.learningPoint == learningPoint) &&
            (identical(other.difficultyId, difficultyId) ||
                other.difficultyId == difficultyId) &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            (identical(other.topicName, topicName) ||
                other.topicName == topicName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, learningPoint, difficultyId, topicId, topicName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningPointDtoImplCopyWith<_$LearningPointDtoImpl> get copyWith =>
      __$$LearningPointDtoImplCopyWithImpl<_$LearningPointDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningPointDtoImplToJson(
      this,
    );
  }
}

abstract class _LearningPointDto extends LearningPointDto {
  const factory _LearningPointDto(
          {required final int id,
          @JsonKey(name: 'learning_point') required final String learningPoint,
          @JsonKey(name: 'difficulty_id') required final int difficultyId,
          @JsonKey(name: 'topic_id') required final int topicId,
          @JsonKey(name: 'topic_name') required final String topicName}) =
      _$LearningPointDtoImpl;
  const _LearningPointDto._() : super._();

  factory _LearningPointDto.fromJson(Map<String, dynamic> json) =
      _$LearningPointDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'learning_point')
  String get learningPoint;
  @override
  @JsonKey(name: 'difficulty_id')
  int get difficultyId;
  @override
  @JsonKey(name: 'topic_id')
  int get topicId;
  @override
  @JsonKey(name: 'topic_name')
  String get topicName;
  @override
  @JsonKey(ignore: true)
  _$$LearningPointDtoImplCopyWith<_$LearningPointDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningGoalDto _$LearningGoalDtoFromJson(Map<String, dynamic> json) {
  return _LearningGoalDto.fromJson(json);
}

/// @nodoc
mixin _$LearningGoalDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_topic_numb', defaultValue: 0)
  int get minTopic => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_topic_numb', defaultValue: 99)
  int get maxTopic => throw _privateConstructorUsedError;
  @JsonKey(name: 'mock_test_templates', defaultValue: [])
  List<MockTestTemplateDto> get mockTestTemplates =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'mock_test_duration', defaultValue: 0)
  int get testDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'numb_questions', defaultValue: 0)
  int get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_select', defaultValue: false)
  bool get canSelectTopic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningGoalDtoCopyWith<LearningGoalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningGoalDtoCopyWith<$Res> {
  factory $LearningGoalDtoCopyWith(
          LearningGoalDto value, $Res Function(LearningGoalDto) then) =
      _$LearningGoalDtoCopyWithImpl<$Res, LearningGoalDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'min_topic_numb', defaultValue: 0) int minTopic,
      @JsonKey(name: 'max_topic_numb', defaultValue: 99) int maxTopic,
      @JsonKey(name: 'mock_test_templates', defaultValue: [])
      List<MockTestTemplateDto> mockTestTemplates,
      @JsonKey(name: 'mock_test_duration', defaultValue: 0) int testDuration,
      @JsonKey(name: 'numb_questions', defaultValue: 0) int totalQuestions,
      @JsonKey(name: 'allow_select', defaultValue: false) bool canSelectTopic});
}

/// @nodoc
class _$LearningGoalDtoCopyWithImpl<$Res, $Val extends LearningGoalDto>
    implements $LearningGoalDtoCopyWith<$Res> {
  _$LearningGoalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minTopic = null,
    Object? maxTopic = null,
    Object? mockTestTemplates = null,
    Object? testDuration = null,
    Object? totalQuestions = null,
    Object? canSelectTopic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minTopic: null == minTopic
          ? _value.minTopic
          : minTopic // ignore: cast_nullable_to_non_nullable
              as int,
      maxTopic: null == maxTopic
          ? _value.maxTopic
          : maxTopic // ignore: cast_nullable_to_non_nullable
              as int,
      mockTestTemplates: null == mockTestTemplates
          ? _value.mockTestTemplates
          : mockTestTemplates // ignore: cast_nullable_to_non_nullable
              as List<MockTestTemplateDto>,
      testDuration: null == testDuration
          ? _value.testDuration
          : testDuration // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      canSelectTopic: null == canSelectTopic
          ? _value.canSelectTopic
          : canSelectTopic // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LearningGoalDtoImplCopyWith<$Res>
    implements $LearningGoalDtoCopyWith<$Res> {
  factory _$$LearningGoalDtoImplCopyWith(_$LearningGoalDtoImpl value,
          $Res Function(_$LearningGoalDtoImpl) then) =
      __$$LearningGoalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'min_topic_numb', defaultValue: 0) int minTopic,
      @JsonKey(name: 'max_topic_numb', defaultValue: 99) int maxTopic,
      @JsonKey(name: 'mock_test_templates', defaultValue: [])
      List<MockTestTemplateDto> mockTestTemplates,
      @JsonKey(name: 'mock_test_duration', defaultValue: 0) int testDuration,
      @JsonKey(name: 'numb_questions', defaultValue: 0) int totalQuestions,
      @JsonKey(name: 'allow_select', defaultValue: false) bool canSelectTopic});
}

/// @nodoc
class __$$LearningGoalDtoImplCopyWithImpl<$Res>
    extends _$LearningGoalDtoCopyWithImpl<$Res, _$LearningGoalDtoImpl>
    implements _$$LearningGoalDtoImplCopyWith<$Res> {
  __$$LearningGoalDtoImplCopyWithImpl(
      _$LearningGoalDtoImpl _value, $Res Function(_$LearningGoalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minTopic = null,
    Object? maxTopic = null,
    Object? mockTestTemplates = null,
    Object? testDuration = null,
    Object? totalQuestions = null,
    Object? canSelectTopic = null,
  }) {
    return _then(_$LearningGoalDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minTopic: null == minTopic
          ? _value.minTopic
          : minTopic // ignore: cast_nullable_to_non_nullable
              as int,
      maxTopic: null == maxTopic
          ? _value.maxTopic
          : maxTopic // ignore: cast_nullable_to_non_nullable
              as int,
      mockTestTemplates: null == mockTestTemplates
          ? _value._mockTestTemplates
          : mockTestTemplates // ignore: cast_nullable_to_non_nullable
              as List<MockTestTemplateDto>,
      testDuration: null == testDuration
          ? _value.testDuration
          : testDuration // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      canSelectTopic: null == canSelectTopic
          ? _value.canSelectTopic
          : canSelectTopic // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LearningGoalDtoImpl extends _LearningGoalDto {
  const _$LearningGoalDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'min_topic_numb', defaultValue: 0) required this.minTopic,
      @JsonKey(name: 'max_topic_numb', defaultValue: 99) required this.maxTopic,
      @JsonKey(name: 'mock_test_templates', defaultValue: [])
      required final List<MockTestTemplateDto> mockTestTemplates,
      @JsonKey(name: 'mock_test_duration', defaultValue: 0)
      required this.testDuration,
      @JsonKey(name: 'numb_questions', defaultValue: 0)
      required this.totalQuestions,
      @JsonKey(name: 'allow_select', defaultValue: false)
      required this.canSelectTopic})
      : _mockTestTemplates = mockTestTemplates,
        super._();

  factory _$LearningGoalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LearningGoalDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'min_topic_numb', defaultValue: 0)
  final int minTopic;
  @override
  @JsonKey(name: 'max_topic_numb', defaultValue: 99)
  final int maxTopic;
  final List<MockTestTemplateDto> _mockTestTemplates;
  @override
  @JsonKey(name: 'mock_test_templates', defaultValue: [])
  List<MockTestTemplateDto> get mockTestTemplates {
    if (_mockTestTemplates is EqualUnmodifiableListView)
      return _mockTestTemplates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mockTestTemplates);
  }

  @override
  @JsonKey(name: 'mock_test_duration', defaultValue: 0)
  final int testDuration;
  @override
  @JsonKey(name: 'numb_questions', defaultValue: 0)
  final int totalQuestions;
  @override
  @JsonKey(name: 'allow_select', defaultValue: false)
  final bool canSelectTopic;

  @override
  String toString() {
    return 'LearningGoalDto(id: $id, name: $name, minTopic: $minTopic, maxTopic: $maxTopic, mockTestTemplates: $mockTestTemplates, testDuration: $testDuration, totalQuestions: $totalQuestions, canSelectTopic: $canSelectTopic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LearningGoalDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minTopic, minTopic) ||
                other.minTopic == minTopic) &&
            (identical(other.maxTopic, maxTopic) ||
                other.maxTopic == maxTopic) &&
            const DeepCollectionEquality()
                .equals(other._mockTestTemplates, _mockTestTemplates) &&
            (identical(other.testDuration, testDuration) ||
                other.testDuration == testDuration) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.canSelectTopic, canSelectTopic) ||
                other.canSelectTopic == canSelectTopic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      minTopic,
      maxTopic,
      const DeepCollectionEquality().hash(_mockTestTemplates),
      testDuration,
      totalQuestions,
      canSelectTopic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LearningGoalDtoImplCopyWith<_$LearningGoalDtoImpl> get copyWith =>
      __$$LearningGoalDtoImplCopyWithImpl<_$LearningGoalDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LearningGoalDtoImplToJson(
      this,
    );
  }
}

abstract class _LearningGoalDto extends LearningGoalDto {
  const factory _LearningGoalDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'min_topic_numb', defaultValue: 0)
      required final int minTopic,
      @JsonKey(name: 'max_topic_numb', defaultValue: 99)
      required final int maxTopic,
      @JsonKey(name: 'mock_test_templates', defaultValue: [])
      required final List<MockTestTemplateDto> mockTestTemplates,
      @JsonKey(name: 'mock_test_duration', defaultValue: 0)
      required final int testDuration,
      @JsonKey(name: 'numb_questions', defaultValue: 0)
      required final int totalQuestions,
      @JsonKey(name: 'allow_select', defaultValue: false)
      required final bool canSelectTopic}) = _$LearningGoalDtoImpl;
  const _LearningGoalDto._() : super._();

  factory _LearningGoalDto.fromJson(Map<String, dynamic> json) =
      _$LearningGoalDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'min_topic_numb', defaultValue: 0)
  int get minTopic;
  @override
  @JsonKey(name: 'max_topic_numb', defaultValue: 99)
  int get maxTopic;
  @override
  @JsonKey(name: 'mock_test_templates', defaultValue: [])
  List<MockTestTemplateDto> get mockTestTemplates;
  @override
  @JsonKey(name: 'mock_test_duration', defaultValue: 0)
  int get testDuration;
  @override
  @JsonKey(name: 'numb_questions', defaultValue: 0)
  int get totalQuestions;
  @override
  @JsonKey(name: 'allow_select', defaultValue: false)
  bool get canSelectTopic;
  @override
  @JsonKey(ignore: true)
  _$$LearningGoalDtoImplCopyWith<_$LearningGoalDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MockTestTemplateDto _$MockTestTemplateDtoFromJson(Map<String, dynamic> json) {
  return _MockTestTemplateDto.fromJson(json);
}

/// @nodoc
mixin _$MockTestTemplateDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MockTestTemplateDtoCopyWith<MockTestTemplateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockTestTemplateDtoCopyWith<$Res> {
  factory $MockTestTemplateDtoCopyWith(
          MockTestTemplateDto value, $Res Function(MockTestTemplateDto) then) =
      _$MockTestTemplateDtoCopyWithImpl<$Res, MockTestTemplateDto>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MockTestTemplateDtoCopyWithImpl<$Res, $Val extends MockTestTemplateDto>
    implements $MockTestTemplateDtoCopyWith<$Res> {
  _$MockTestTemplateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MockTestTemplateDtoImplCopyWith<$Res>
    implements $MockTestTemplateDtoCopyWith<$Res> {
  factory _$$MockTestTemplateDtoImplCopyWith(_$MockTestTemplateDtoImpl value,
          $Res Function(_$MockTestTemplateDtoImpl) then) =
      __$$MockTestTemplateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$MockTestTemplateDtoImplCopyWithImpl<$Res>
    extends _$MockTestTemplateDtoCopyWithImpl<$Res, _$MockTestTemplateDtoImpl>
    implements _$$MockTestTemplateDtoImplCopyWith<$Res> {
  __$$MockTestTemplateDtoImplCopyWithImpl(_$MockTestTemplateDtoImpl _value,
      $Res Function(_$MockTestTemplateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$MockTestTemplateDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MockTestTemplateDtoImpl extends _MockTestTemplateDto {
  const _$MockTestTemplateDtoImpl({required this.id, required this.name})
      : super._();

  factory _$MockTestTemplateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MockTestTemplateDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MockTestTemplateDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MockTestTemplateDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MockTestTemplateDtoImplCopyWith<_$MockTestTemplateDtoImpl> get copyWith =>
      __$$MockTestTemplateDtoImplCopyWithImpl<_$MockTestTemplateDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MockTestTemplateDtoImplToJson(
      this,
    );
  }
}

abstract class _MockTestTemplateDto extends MockTestTemplateDto {
  const factory _MockTestTemplateDto(
      {required final int id,
      required final String name}) = _$MockTestTemplateDtoImpl;
  const _MockTestTemplateDto._() : super._();

  factory _MockTestTemplateDto.fromJson(Map<String, dynamic> json) =
      _$MockTestTemplateDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$MockTestTemplateDtoImplCopyWith<_$MockTestTemplateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentLearningGoalDto _$StudentLearningGoalDtoFromJson(
    Map<String, dynamic> json) {
  return _StudentLearningGoalDto.fromJson(json);
}

/// @nodoc
mixin _$StudentLearningGoalDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'program_name')
  String get programName => throw _privateConstructorUsedError;
  @JsonKey(name: 'complete_percentage')
  int get completePercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentLearningGoalDtoCopyWith<StudentLearningGoalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentLearningGoalDtoCopyWith<$Res> {
  factory $StudentLearningGoalDtoCopyWith(StudentLearningGoalDto value,
          $Res Function(StudentLearningGoalDto) then) =
      _$StudentLearningGoalDtoCopyWithImpl<$Res, StudentLearningGoalDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'program_name') String programName,
      @JsonKey(name: 'complete_percentage') int completePercentage});
}

/// @nodoc
class _$StudentLearningGoalDtoCopyWithImpl<$Res,
        $Val extends StudentLearningGoalDto>
    implements $StudentLearningGoalDtoCopyWith<$Res> {
  _$StudentLearningGoalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? programName = null,
    Object? completePercentage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      programName: null == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String,
      completePercentage: null == completePercentage
          ? _value.completePercentage
          : completePercentage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentLearningGoalDtoImplCopyWith<$Res>
    implements $StudentLearningGoalDtoCopyWith<$Res> {
  factory _$$StudentLearningGoalDtoImplCopyWith(
          _$StudentLearningGoalDtoImpl value,
          $Res Function(_$StudentLearningGoalDtoImpl) then) =
      __$$StudentLearningGoalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'program_name') String programName,
      @JsonKey(name: 'complete_percentage') int completePercentage});
}

/// @nodoc
class __$$StudentLearningGoalDtoImplCopyWithImpl<$Res>
    extends _$StudentLearningGoalDtoCopyWithImpl<$Res,
        _$StudentLearningGoalDtoImpl>
    implements _$$StudentLearningGoalDtoImplCopyWith<$Res> {
  __$$StudentLearningGoalDtoImplCopyWithImpl(
      _$StudentLearningGoalDtoImpl _value,
      $Res Function(_$StudentLearningGoalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? programName = null,
    Object? completePercentage = null,
  }) {
    return _then(_$StudentLearningGoalDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      programName: null == programName
          ? _value.programName
          : programName // ignore: cast_nullable_to_non_nullable
              as String,
      completePercentage: null == completePercentage
          ? _value.completePercentage
          : completePercentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentLearningGoalDtoImpl extends _StudentLearningGoalDto {
  const _$StudentLearningGoalDtoImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'program_name') required this.programName,
      @JsonKey(name: 'complete_percentage') required this.completePercentage})
      : super._();

  factory _$StudentLearningGoalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentLearningGoalDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'program_name')
  final String programName;
  @override
  @JsonKey(name: 'complete_percentage')
  final int completePercentage;

  @override
  String toString() {
    return 'StudentLearningGoalDto(id: $id, name: $name, programName: $programName, completePercentage: $completePercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentLearningGoalDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.programName, programName) ||
                other.programName == programName) &&
            (identical(other.completePercentage, completePercentage) ||
                other.completePercentage == completePercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, programName, completePercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentLearningGoalDtoImplCopyWith<_$StudentLearningGoalDtoImpl>
      get copyWith => __$$StudentLearningGoalDtoImplCopyWithImpl<
          _$StudentLearningGoalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentLearningGoalDtoImplToJson(
      this,
    );
  }
}

abstract class _StudentLearningGoalDto extends StudentLearningGoalDto {
  const factory _StudentLearningGoalDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'program_name') required final String programName,
      @JsonKey(name: 'complete_percentage')
      required final int completePercentage}) = _$StudentLearningGoalDtoImpl;
  const _StudentLearningGoalDto._() : super._();

  factory _StudentLearningGoalDto.fromJson(Map<String, dynamic> json) =
      _$StudentLearningGoalDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'program_name')
  String get programName;
  @override
  @JsonKey(name: 'complete_percentage')
  int get completePercentage;
  @override
  @JsonKey(ignore: true)
  _$$StudentLearningGoalDtoImplCopyWith<_$StudentLearningGoalDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
