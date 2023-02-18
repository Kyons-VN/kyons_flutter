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
  $Res call({int id, String label, List<ProgramDto> programs});
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
    Object? label = null,
    Object? programs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_SubjectDtoCopyWith<$Res>
    implements $SubjectDtoCopyWith<$Res> {
  factory _$$_SubjectDtoCopyWith(
          _$_SubjectDto value, $Res Function(_$_SubjectDto) then) =
      __$$_SubjectDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String label, List<ProgramDto> programs});
}

/// @nodoc
class __$$_SubjectDtoCopyWithImpl<$Res>
    extends _$SubjectDtoCopyWithImpl<$Res, _$_SubjectDto>
    implements _$$_SubjectDtoCopyWith<$Res> {
  __$$_SubjectDtoCopyWithImpl(
      _$_SubjectDto _value, $Res Function(_$_SubjectDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? programs = null,
  }) {
    return _then(_$_SubjectDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_SubjectDto extends _SubjectDto {
  const _$_SubjectDto(
      {required this.id,
      required this.label,
      required final List<ProgramDto> programs})
      : _programs = programs,
        super._();

  factory _$_SubjectDto.fromJson(Map<String, dynamic> json) =>
      _$$_SubjectDtoFromJson(json);

  @override
  final int id;
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
    return 'SubjectDto(id: $id, label: $label, programs: $programs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubjectDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, label, const DeepCollectionEquality().hash(_programs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubjectDtoCopyWith<_$_SubjectDto> get copyWith =>
      __$$_SubjectDtoCopyWithImpl<_$_SubjectDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectDtoToJson(
      this,
    );
  }
}

abstract class _SubjectDto extends SubjectDto {
  const factory _SubjectDto(
      {required final int id,
      required final String label,
      required final List<ProgramDto> programs}) = _$_SubjectDto;
  const _SubjectDto._() : super._();

  factory _SubjectDto.fromJson(Map<String, dynamic> json) =
      _$_SubjectDto.fromJson;

  @override
  int get id;
  @override
  String get label;
  @override
  List<ProgramDto> get programs;
  @override
  @JsonKey(ignore: true)
  _$$_SubjectDtoCopyWith<_$_SubjectDto> get copyWith =>
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
abstract class _$$_ProgramDtoCopyWith<$Res>
    implements $ProgramDtoCopyWith<$Res> {
  factory _$$_ProgramDtoCopyWith(
          _$_ProgramDto value, $Res Function(_$_ProgramDto) then) =
      __$$_ProgramDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @JsonKey(name: 'subject_id') int subjectId});
}

/// @nodoc
class __$$_ProgramDtoCopyWithImpl<$Res>
    extends _$ProgramDtoCopyWithImpl<$Res, _$_ProgramDto>
    implements _$$_ProgramDtoCopyWith<$Res> {
  __$$_ProgramDtoCopyWithImpl(
      _$_ProgramDto _value, $Res Function(_$_ProgramDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? subjectId = null,
  }) {
    return _then(_$_ProgramDto(
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
class _$_ProgramDto extends _ProgramDto {
  const _$_ProgramDto(
      {required this.id,
      required this.name,
      @JsonKey(name: 'subject_id') required this.subjectId})
      : super._();

  factory _$_ProgramDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProgramDtoFromJson(json);

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
            other is _$_ProgramDto &&
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
  _$$_ProgramDtoCopyWith<_$_ProgramDto> get copyWith =>
      __$$_ProgramDtoCopyWithImpl<_$_ProgramDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgramDtoToJson(
      this,
    );
  }
}

abstract class _ProgramDto extends ProgramDto {
  const factory _ProgramDto(
          {required final int id,
          required final String name,
          @JsonKey(name: 'subject_id') required final int subjectId}) =
      _$_ProgramDto;
  const _ProgramDto._() : super._();

  factory _ProgramDto.fromJson(Map<String, dynamic> json) =
      _$_ProgramDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'subject_id')
  int get subjectId;
  @override
  @JsonKey(ignore: true)
  _$$_ProgramDtoCopyWith<_$_ProgramDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonItemDto _$LessonItemDtoFromJson(Map<String, dynamic> json) {
  return _LessonItemDto.fromJson(json);
}

/// @nodoc
mixin _$LessonItemDto {
  String get id => throw _privateConstructorUsedError;
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
  $Res call({String id, @JsonKey(name: 'new') bool isNew});
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
    Object? isNew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonItemDtoCopyWith<$Res>
    implements $LessonItemDtoCopyWith<$Res> {
  factory _$$_LessonItemDtoCopyWith(
          _$_LessonItemDto value, $Res Function(_$_LessonItemDto) then) =
      __$$_LessonItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: 'new') bool isNew});
}

/// @nodoc
class __$$_LessonItemDtoCopyWithImpl<$Res>
    extends _$LessonItemDtoCopyWithImpl<$Res, _$_LessonItemDto>
    implements _$$_LessonItemDtoCopyWith<$Res> {
  __$$_LessonItemDtoCopyWithImpl(
      _$_LessonItemDto _value, $Res Function(_$_LessonItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isNew = null,
  }) {
    return _then(_$_LessonItemDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$_LessonItemDto extends _LessonItemDto {
  const _$_LessonItemDto(
      {required this.id, @JsonKey(name: 'new') required this.isNew})
      : super._();

  factory _$_LessonItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_LessonItemDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'new')
  final bool isNew;

  @override
  String toString() {
    return 'LessonItemDto(id: $id, isNew: $isNew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isNew, isNew) || other.isNew == isNew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonItemDtoCopyWith<_$_LessonItemDto> get copyWith =>
      __$$_LessonItemDtoCopyWithImpl<_$_LessonItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonItemDtoToJson(
      this,
    );
  }
}

abstract class _LessonItemDto extends LessonItemDto {
  const factory _LessonItemDto(
      {required final String id,
      @JsonKey(name: 'new') required final bool isNew}) = _$_LessonItemDto;
  const _LessonItemDto._() : super._();

  factory _LessonItemDto.fromJson(Map<String, dynamic> json) =
      _$_LessonItemDto.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'new')
  bool get isNew;
  @override
  @JsonKey(ignore: true)
  _$$_LessonItemDtoCopyWith<_$_LessonItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LearningPathDto _$LearningPathDtoFromJson(Map<String, dynamic> json) {
  return _LearningPathDto.fromJson(json);
}

/// @nodoc
mixin _$LearningPathDto {
  List<LessonItemDto> get lessonsDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPathDtoCopyWith<LearningPathDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPathDtoCopyWith<$Res> {
  factory $LearningPathDtoCopyWith(
          LearningPathDto value, $Res Function(LearningPathDto) then) =
      _$LearningPathDtoCopyWithImpl<$Res, LearningPathDto>;
  @useResult
  $Res call({List<LessonItemDto> lessonsDto});
}

/// @nodoc
class _$LearningPathDtoCopyWithImpl<$Res, $Val extends LearningPathDto>
    implements $LearningPathDtoCopyWith<$Res> {
  _$LearningPathDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonsDto = null,
  }) {
    return _then(_value.copyWith(
      lessonsDto: null == lessonsDto
          ? _value.lessonsDto
          : lessonsDto // ignore: cast_nullable_to_non_nullable
              as List<LessonItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPathDtoCopyWith<$Res>
    implements $LearningPathDtoCopyWith<$Res> {
  factory _$$_LearningPathDtoCopyWith(
          _$_LearningPathDto value, $Res Function(_$_LearningPathDto) then) =
      __$$_LearningPathDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LessonItemDto> lessonsDto});
}

/// @nodoc
class __$$_LearningPathDtoCopyWithImpl<$Res>
    extends _$LearningPathDtoCopyWithImpl<$Res, _$_LearningPathDto>
    implements _$$_LearningPathDtoCopyWith<$Res> {
  __$$_LearningPathDtoCopyWithImpl(
      _$_LearningPathDto _value, $Res Function(_$_LearningPathDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonsDto = null,
  }) {
    return _then(_$_LearningPathDto(
      lessonsDto: null == lessonsDto
          ? _value._lessonsDto
          : lessonsDto // ignore: cast_nullable_to_non_nullable
              as List<LessonItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPathDto extends _LearningPathDto {
  const _$_LearningPathDto({required final List<LessonItemDto> lessonsDto})
      : _lessonsDto = lessonsDto,
        super._();

  factory _$_LearningPathDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPathDtoFromJson(json);

  final List<LessonItemDto> _lessonsDto;
  @override
  List<LessonItemDto> get lessonsDto {
    if (_lessonsDto is EqualUnmodifiableListView) return _lessonsDto;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessonsDto);
  }

  @override
  String toString() {
    return 'LearningPathDto(lessonsDto: $lessonsDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPathDto &&
            const DeepCollectionEquality()
                .equals(other._lessonsDto, _lessonsDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lessonsDto));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPathDtoCopyWith<_$_LearningPathDto> get copyWith =>
      __$$_LearningPathDtoCopyWithImpl<_$_LearningPathDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathDtoToJson(
      this,
    );
  }
}

abstract class _LearningPathDto extends LearningPathDto {
  const factory _LearningPathDto(
      {required final List<LessonItemDto> lessonsDto}) = _$_LearningPathDto;
  const _LearningPathDto._() : super._();

  factory _LearningPathDto.fromJson(Map<String, dynamic> json) =
      _$_LearningPathDto.fromJson;

  @override
  List<LessonItemDto> get lessonsDto;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPathDtoCopyWith<_$_LearningPathDto> get copyWith =>
      throw _privateConstructorUsedError;
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
abstract class _$$_LessonGroupDtoCopyWith<$Res>
    implements $LessonGroupDtoCopyWith<$Res> {
  factory _$$_LessonGroupDtoCopyWith(
          _$_LessonGroupDto value, $Res Function(_$_LessonGroupDto) then) =
      __$$_LessonGroupDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<LessonInfoDto> lessonInfos});
}

/// @nodoc
class __$$_LessonGroupDtoCopyWithImpl<$Res>
    extends _$LessonGroupDtoCopyWithImpl<$Res, _$_LessonGroupDto>
    implements _$$_LessonGroupDtoCopyWith<$Res> {
  __$$_LessonGroupDtoCopyWithImpl(
      _$_LessonGroupDto _value, $Res Function(_$_LessonGroupDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonInfos = null,
  }) {
    return _then(_$_LessonGroupDto(
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
class _$_LessonGroupDto extends _LessonGroupDto {
  const _$_LessonGroupDto(
      {required this.id, required final List<LessonInfoDto> lessonInfos})
      : _lessonInfos = lessonInfos,
        super._();

  factory _$_LessonGroupDto.fromJson(Map<String, dynamic> json) =>
      _$$_LessonGroupDtoFromJson(json);

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
            other is _$_LessonGroupDto &&
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
  _$$_LessonGroupDtoCopyWith<_$_LessonGroupDto> get copyWith =>
      __$$_LessonGroupDtoCopyWithImpl<_$_LessonGroupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonGroupDtoToJson(
      this,
    );
  }
}

abstract class _LessonGroupDto extends LessonGroupDto {
  const factory _LessonGroupDto(
      {required final String id,
      required final List<LessonInfoDto> lessonInfos}) = _$_LessonGroupDto;
  const _LessonGroupDto._() : super._();

  factory _LessonGroupDto.fromJson(Map<String, dynamic> json) =
      _$_LessonGroupDto.fromJson;

  @override
  String get id;
  @override
  List<LessonInfoDto> get lessonInfos;
  @override
  @JsonKey(ignore: true)
  _$$_LessonGroupDtoCopyWith<_$_LessonGroupDto> get copyWith =>
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
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$_CategoryDto>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CategoryDto(
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
class _$_CategoryDto extends _CategoryDto {
  const _$_CategoryDto({required this.id, required this.name}) : super._();

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

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
            other is _$_CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(
      this,
    );
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {required final int id, required final String name}) = _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
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
abstract class _$$_TopicDtoCopyWith<$Res> implements $TopicDtoCopyWith<$Res> {
  factory _$$_TopicDtoCopyWith(
          _$_TopicDto value, $Res Function(_$_TopicDto) then) =
      __$$_TopicDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class __$$_TopicDtoCopyWithImpl<$Res>
    extends _$TopicDtoCopyWithImpl<$Res, _$_TopicDto>
    implements _$$_TopicDtoCopyWith<$Res> {
  __$$_TopicDtoCopyWithImpl(
      _$_TopicDto _value, $Res Function(_$_TopicDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_TopicDto(
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
class _$_TopicDto extends _TopicDto {
  const _$_TopicDto(
      {@JsonKey(defaultValue: 0) required this.id,
      @JsonKey(defaultValue: '') required this.name})
      : super._();

  factory _$_TopicDto.fromJson(Map<String, dynamic> json) =>
      _$$_TopicDtoFromJson(json);

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
            other is _$_TopicDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopicDtoCopyWith<_$_TopicDto> get copyWith =>
      __$$_TopicDtoCopyWithImpl<_$_TopicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicDtoToJson(
      this,
    );
  }
}

abstract class _TopicDto extends TopicDto {
  const factory _TopicDto(
      {@JsonKey(defaultValue: 0) required final int id,
      @JsonKey(defaultValue: '') required final String name}) = _$_TopicDto;
  const _TopicDto._() : super._();

  factory _TopicDto.fromJson(Map<String, dynamic> json) = _$_TopicDto.fromJson;

  @override
  @JsonKey(defaultValue: 0)
  int get id;
  @override
  @JsonKey(defaultValue: '')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TopicDtoCopyWith<_$_TopicDto> get copyWith =>
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
abstract class _$$_LessonInfoDtoCopyWith<$Res>
    implements $LessonInfoDtoCopyWith<$Res> {
  factory _$$_LessonInfoDtoCopyWith(
          _$_LessonInfoDto value, $Res Function(_$_LessonInfoDto) then) =
      __$$_LessonInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryDto category, TopicDto topic, List<LessonDto> lessons});

  @override
  $CategoryDtoCopyWith<$Res> get category;
  @override
  $TopicDtoCopyWith<$Res> get topic;
}

/// @nodoc
class __$$_LessonInfoDtoCopyWithImpl<$Res>
    extends _$LessonInfoDtoCopyWithImpl<$Res, _$_LessonInfoDto>
    implements _$$_LessonInfoDtoCopyWith<$Res> {
  __$$_LessonInfoDtoCopyWithImpl(
      _$_LessonInfoDto _value, $Res Function(_$_LessonInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? topic = null,
    Object? lessons = null,
  }) {
    return _then(_$_LessonInfoDto(
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
class _$_LessonInfoDto extends _LessonInfoDto {
  const _$_LessonInfoDto(
      {required this.category,
      required this.topic,
      required final List<LessonDto> lessons})
      : _lessons = lessons,
        super._();

  factory _$_LessonInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_LessonInfoDtoFromJson(json);

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
            other is _$_LessonInfoDto &&
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
  _$$_LessonInfoDtoCopyWith<_$_LessonInfoDto> get copyWith =>
      __$$_LessonInfoDtoCopyWithImpl<_$_LessonInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonInfoDtoToJson(
      this,
    );
  }
}

abstract class _LessonInfoDto extends LessonInfoDto {
  const factory _LessonInfoDto(
      {required final CategoryDto category,
      required final TopicDto topic,
      required final List<LessonDto> lessons}) = _$_LessonInfoDto;
  const _LessonInfoDto._() : super._();

  factory _LessonInfoDto.fromJson(Map<String, dynamic> json) =
      _$_LessonInfoDto.fromJson;

  @override
  CategoryDto get category;
  @override
  TopicDto get topic;
  @override
  List<LessonDto> get lessons;
  @override
  @JsonKey(ignore: true)
  _$$_LessonInfoDtoCopyWith<_$_LessonInfoDto> get copyWith =>
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
      @JsonKey(name: 'learning_point_id')
          int learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
          int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level')
          int difficultyLevel,
      @JsonKey(defaultValue: '')
          String content});
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
abstract class _$$_LessonDtoCopyWith<$Res> implements $LessonDtoCopyWith<$Res> {
  factory _$$_LessonDtoCopyWith(
          _$_LessonDto value, $Res Function(_$_LessonDto) then) =
      __$$_LessonDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'learning_point_id')
          int learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
          int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level')
          int difficultyLevel,
      @JsonKey(defaultValue: '')
          String content});
}

/// @nodoc
class __$$_LessonDtoCopyWithImpl<$Res>
    extends _$LessonDtoCopyWithImpl<$Res, _$_LessonDto>
    implements _$$_LessonDtoCopyWith<$Res> {
  __$$_LessonDtoCopyWithImpl(
      _$_LessonDto _value, $Res Function(_$_LessonDto) _then)
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
    return _then(_$_LessonDto(
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
class _$_LessonDto extends _LessonDto {
  const _$_LessonDto(
      {required this.id,
      required this.name,
      @JsonKey(name: 'learning_point_id')
          required this.learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
          required this.learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level')
          required this.difficultyLevel,
      @JsonKey(defaultValue: '')
          required this.content})
      : super._();

  factory _$_LessonDto.fromJson(Map<String, dynamic> json) =>
      _$$_LessonDtoFromJson(json);

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
            other is _$_LessonDto &&
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
  _$$_LessonDtoCopyWith<_$_LessonDto> get copyWith =>
      __$$_LessonDtoCopyWithImpl<_$_LessonDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonDtoToJson(
      this,
    );
  }
}

abstract class _LessonDto extends LessonDto {
  const factory _LessonDto(
      {required final int id,
      required final String name,
      @JsonKey(name: 'learning_point_id')
          required final int learningPointId,
      @JsonKey(name: 'learning_point_difficulty_id')
          required final int learningPointDifficultyId,
      @JsonKey(name: 'difficulty_level')
          required final int difficultyLevel,
      @JsonKey(defaultValue: '')
          required final String content}) = _$_LessonDto;
  const _LessonDto._() : super._();

  factory _LessonDto.fromJson(Map<String, dynamic> json) =
      _$_LessonDto.fromJson;

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
  _$$_LessonDtoCopyWith<_$_LessonDto> get copyWith =>
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
abstract class _$$_LearningPointDtoCopyWith<$Res>
    implements $LearningPointDtoCopyWith<$Res> {
  factory _$$_LearningPointDtoCopyWith(
          _$_LearningPointDto value, $Res Function(_$_LearningPointDto) then) =
      __$$_LearningPointDtoCopyWithImpl<$Res>;
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
class __$$_LearningPointDtoCopyWithImpl<$Res>
    extends _$LearningPointDtoCopyWithImpl<$Res, _$_LearningPointDto>
    implements _$$_LearningPointDtoCopyWith<$Res> {
  __$$_LearningPointDtoCopyWithImpl(
      _$_LearningPointDto _value, $Res Function(_$_LearningPointDto) _then)
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
    return _then(_$_LearningPointDto(
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
class _$_LearningPointDto extends _LearningPointDto {
  const _$_LearningPointDto(
      {required this.id,
      @JsonKey(name: 'learning_point') required this.learningPoint,
      @JsonKey(name: 'difficulty_id') required this.difficultyId,
      @JsonKey(name: 'topic_id') required this.topicId,
      @JsonKey(name: 'topic_name') required this.topicName})
      : super._();

  factory _$_LearningPointDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPointDtoFromJson(json);

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
            other is _$_LearningPointDto &&
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
  _$$_LearningPointDtoCopyWith<_$_LearningPointDto> get copyWith =>
      __$$_LearningPointDtoCopyWithImpl<_$_LearningPointDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPointDtoToJson(
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
      _$_LearningPointDto;
  const _LearningPointDto._() : super._();

  factory _LearningPointDto.fromJson(Map<String, dynamic> json) =
      _$_LearningPointDto.fromJson;

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
  _$$_LearningPointDtoCopyWith<_$_LearningPointDto> get copyWith =>
      throw _privateConstructorUsedError;
}
