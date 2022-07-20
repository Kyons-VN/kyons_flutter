// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$SubjectDtoCopyWithImpl<$Res>;
  $Res call({int id, String label, List<ProgramDto> programs});
}

/// @nodoc
class _$SubjectDtoCopyWithImpl<$Res> implements $SubjectDtoCopyWith<$Res> {
  _$SubjectDtoCopyWithImpl(this._value, this._then);

  final SubjectDto _value;
  // ignore: unused_field
  final $Res Function(SubjectDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? programs = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      programs: programs == freezed
          ? _value.programs
          : programs // ignore: cast_nullable_to_non_nullable
              as List<ProgramDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_SubjectDtoCopyWith<$Res>
    implements $SubjectDtoCopyWith<$Res> {
  factory _$$_SubjectDtoCopyWith(
          _$_SubjectDto value, $Res Function(_$_SubjectDto) then) =
      __$$_SubjectDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String label, List<ProgramDto> programs});
}

/// @nodoc
class __$$_SubjectDtoCopyWithImpl<$Res> extends _$SubjectDtoCopyWithImpl<$Res>
    implements _$$_SubjectDtoCopyWith<$Res> {
  __$$_SubjectDtoCopyWithImpl(
      _$_SubjectDto _value, $Res Function(_$_SubjectDto) _then)
      : super(_value, (v) => _then(v as _$_SubjectDto));

  @override
  _$_SubjectDto get _value => super._value as _$_SubjectDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? label = freezed,
    Object? programs = freezed,
  }) {
    return _then(_$_SubjectDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      programs: programs == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(_programs));

  @JsonKey(ignore: true)
  @override
  _$$_SubjectDtoCopyWith<_$_SubjectDto> get copyWith =>
      __$$_SubjectDtoCopyWithImpl<_$_SubjectDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubjectDtoToJson(this);
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
  int get id => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  List<ProgramDto> get programs => throw _privateConstructorUsedError;
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
      _$ProgramDtoCopyWithImpl<$Res>;
  $Res call({int id, String name, @JsonKey(name: 'subject_id') int subjectId});
}

/// @nodoc
class _$ProgramDtoCopyWithImpl<$Res> implements $ProgramDtoCopyWith<$Res> {
  _$ProgramDtoCopyWithImpl(this._value, this._then);

  final ProgramDto _value;
  // ignore: unused_field
  final $Res Function(ProgramDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? subjectId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: subjectId == freezed
          ? _value.subjectId
          : subjectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ProgramDtoCopyWith<$Res>
    implements $ProgramDtoCopyWith<$Res> {
  factory _$$_ProgramDtoCopyWith(
          _$_ProgramDto value, $Res Function(_$_ProgramDto) then) =
      __$$_ProgramDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, @JsonKey(name: 'subject_id') int subjectId});
}

/// @nodoc
class __$$_ProgramDtoCopyWithImpl<$Res> extends _$ProgramDtoCopyWithImpl<$Res>
    implements _$$_ProgramDtoCopyWith<$Res> {
  __$$_ProgramDtoCopyWithImpl(
      _$_ProgramDto _value, $Res Function(_$_ProgramDto) _then)
      : super(_value, (v) => _then(v as _$_ProgramDto));

  @override
  _$_ProgramDto get _value => super._value as _$_ProgramDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? subjectId = freezed,
  }) {
    return _then(_$_ProgramDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subjectId: subjectId == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.subjectId, subjectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(subjectId));

  @JsonKey(ignore: true)
  @override
  _$$_ProgramDtoCopyWith<_$_ProgramDto> get copyWith =>
      __$$_ProgramDtoCopyWithImpl<_$_ProgramDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProgramDtoToJson(this);
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
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'subject_id')
  int get subjectId => throw _privateConstructorUsedError;
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
      _$LessonItemDtoCopyWithImpl<$Res>;
  $Res call({String id, @JsonKey(name: 'new') bool isNew});
}

/// @nodoc
class _$LessonItemDtoCopyWithImpl<$Res>
    implements $LessonItemDtoCopyWith<$Res> {
  _$LessonItemDtoCopyWithImpl(this._value, this._then);

  final LessonItemDto _value;
  // ignore: unused_field
  final $Res Function(LessonItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonItemDtoCopyWith<$Res>
    implements $LessonItemDtoCopyWith<$Res> {
  factory _$$_LessonItemDtoCopyWith(
          _$_LessonItemDto value, $Res Function(_$_LessonItemDto) then) =
      __$$_LessonItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, @JsonKey(name: 'new') bool isNew});
}

/// @nodoc
class __$$_LessonItemDtoCopyWithImpl<$Res>
    extends _$LessonItemDtoCopyWithImpl<$Res>
    implements _$$_LessonItemDtoCopyWith<$Res> {
  __$$_LessonItemDtoCopyWithImpl(
      _$_LessonItemDto _value, $Res Function(_$_LessonItemDto) _then)
      : super(_value, (v) => _then(v as _$_LessonItemDto));

  @override
  _$_LessonItemDto get _value => super._value as _$_LessonItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
  }) {
    return _then(_$_LessonItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: isNew == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNew, isNew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isNew));

  @JsonKey(ignore: true)
  @override
  _$$_LessonItemDtoCopyWith<_$_LessonItemDto> get copyWith =>
      __$$_LessonItemDtoCopyWithImpl<_$_LessonItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonItemDtoToJson(this);
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
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'new')
  bool get isNew => throw _privateConstructorUsedError;
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
      _$LearningPathDtoCopyWithImpl<$Res>;
  $Res call({List<LessonItemDto> lessonsDto});
}

/// @nodoc
class _$LearningPathDtoCopyWithImpl<$Res>
    implements $LearningPathDtoCopyWith<$Res> {
  _$LearningPathDtoCopyWithImpl(this._value, this._then);

  final LearningPathDto _value;
  // ignore: unused_field
  final $Res Function(LearningPathDto) _then;

  @override
  $Res call({
    Object? lessonsDto = freezed,
  }) {
    return _then(_value.copyWith(
      lessonsDto: lessonsDto == freezed
          ? _value.lessonsDto
          : lessonsDto // ignore: cast_nullable_to_non_nullable
              as List<LessonItemDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_LearningPathDtoCopyWith<$Res>
    implements $LearningPathDtoCopyWith<$Res> {
  factory _$$_LearningPathDtoCopyWith(
          _$_LearningPathDto value, $Res Function(_$_LearningPathDto) then) =
      __$$_LearningPathDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<LessonItemDto> lessonsDto});
}

/// @nodoc
class __$$_LearningPathDtoCopyWithImpl<$Res>
    extends _$LearningPathDtoCopyWithImpl<$Res>
    implements _$$_LearningPathDtoCopyWith<$Res> {
  __$$_LearningPathDtoCopyWithImpl(
      _$_LearningPathDto _value, $Res Function(_$_LearningPathDto) _then)
      : super(_value, (v) => _then(v as _$_LearningPathDto));

  @override
  _$_LearningPathDto get _value => super._value as _$_LearningPathDto;

  @override
  $Res call({
    Object? lessonsDto = freezed,
  }) {
    return _then(_$_LearningPathDto(
      lessonsDto: lessonsDto == freezed
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
  _$$_LearningPathDtoCopyWith<_$_LearningPathDto> get copyWith =>
      __$$_LearningPathDtoCopyWithImpl<_$_LearningPathDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPathDtoToJson(this);
  }
}

abstract class _LearningPathDto extends LearningPathDto {
  const factory _LearningPathDto(
      {required final List<LessonItemDto> lessonsDto}) = _$_LearningPathDto;
  const _LearningPathDto._() : super._();

  factory _LearningPathDto.fromJson(Map<String, dynamic> json) =
      _$_LearningPathDto.fromJson;

  @override
  List<LessonItemDto> get lessonsDto => throw _privateConstructorUsedError;
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
      _$LessonGroupDtoCopyWithImpl<$Res>;
  $Res call({String id, List<LessonInfoDto> lessonInfos});
}

/// @nodoc
class _$LessonGroupDtoCopyWithImpl<$Res>
    implements $LessonGroupDtoCopyWith<$Res> {
  _$LessonGroupDtoCopyWithImpl(this._value, this._then);

  final LessonGroupDto _value;
  // ignore: unused_field
  final $Res Function(LessonGroupDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? lessonInfos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonInfos: lessonInfos == freezed
          ? _value.lessonInfos
          : lessonInfos // ignore: cast_nullable_to_non_nullable
              as List<LessonInfoDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonGroupDtoCopyWith<$Res>
    implements $LessonGroupDtoCopyWith<$Res> {
  factory _$$_LessonGroupDtoCopyWith(
          _$_LessonGroupDto value, $Res Function(_$_LessonGroupDto) then) =
      __$$_LessonGroupDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<LessonInfoDto> lessonInfos});
}

/// @nodoc
class __$$_LessonGroupDtoCopyWithImpl<$Res>
    extends _$LessonGroupDtoCopyWithImpl<$Res>
    implements _$$_LessonGroupDtoCopyWith<$Res> {
  __$$_LessonGroupDtoCopyWithImpl(
      _$_LessonGroupDto _value, $Res Function(_$_LessonGroupDto) _then)
      : super(_value, (v) => _then(v as _$_LessonGroupDto));

  @override
  _$_LessonGroupDto get _value => super._value as _$_LessonGroupDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? lessonInfos = freezed,
  }) {
    return _then(_$_LessonGroupDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lessonInfos: lessonInfos == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._lessonInfos, _lessonInfos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_lessonInfos));

  @JsonKey(ignore: true)
  @override
  _$$_LessonGroupDtoCopyWith<_$_LessonGroupDto> get copyWith =>
      __$$_LessonGroupDtoCopyWithImpl<_$_LessonGroupDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonGroupDtoToJson(this);
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
  String get id => throw _privateConstructorUsedError;
  @override
  List<LessonInfoDto> get lessonInfos => throw _privateConstructorUsedError;
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
      _$CategoryDtoCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res> implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  final CategoryDto _value;
  // ignore: unused_field
  final $Res Function(CategoryDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res> extends _$CategoryDtoCopyWithImpl<$Res>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, (v) => _then(v as _$_CategoryDto));

  @override
  _$_CategoryDto get _value => super._value as _$_CategoryDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CategoryDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(this);
  }
}

abstract class _CategoryDto extends CategoryDto {
  const factory _CategoryDto(
      {required final int id, required final String name}) = _$_CategoryDto;
  const _CategoryDto._() : super._();

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
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
      _$TopicDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class _$TopicDtoCopyWithImpl<$Res> implements $TopicDtoCopyWith<$Res> {
  _$TopicDtoCopyWithImpl(this._value, this._then);

  final TopicDto _value;
  // ignore: unused_field
  final $Res Function(TopicDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TopicDtoCopyWith<$Res> implements $TopicDtoCopyWith<$Res> {
  factory _$$_TopicDtoCopyWith(
          _$_TopicDto value, $Res Function(_$_TopicDto) then) =
      __$$_TopicDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(defaultValue: '') String name});
}

/// @nodoc
class __$$_TopicDtoCopyWithImpl<$Res> extends _$TopicDtoCopyWithImpl<$Res>
    implements _$$_TopicDtoCopyWith<$Res> {
  __$$_TopicDtoCopyWithImpl(
      _$_TopicDto _value, $Res Function(_$_TopicDto) _then)
      : super(_value, (v) => _then(v as _$_TopicDto));

  @override
  _$_TopicDto get _value => super._value as _$_TopicDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TopicDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_TopicDtoCopyWith<_$_TopicDto> get copyWith =>
      __$$_TopicDtoCopyWithImpl<_$_TopicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopicDtoToJson(this);
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
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '')
  String get name => throw _privateConstructorUsedError;
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
      _$LessonInfoDtoCopyWithImpl<$Res>;
  $Res call({CategoryDto category, TopicDto topic, List<LessonDto> lessons});

  $CategoryDtoCopyWith<$Res> get category;
  $TopicDtoCopyWith<$Res> get topic;
}

/// @nodoc
class _$LessonInfoDtoCopyWithImpl<$Res>
    implements $LessonInfoDtoCopyWith<$Res> {
  _$LessonInfoDtoCopyWithImpl(this._value, this._then);

  final LessonInfoDto _value;
  // ignore: unused_field
  final $Res Function(LessonInfoDto) _then;

  @override
  $Res call({
    Object? category = freezed,
    Object? topic = freezed,
    Object? lessons = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TopicDto,
      lessons: lessons == freezed
          ? _value.lessons
          : lessons // ignore: cast_nullable_to_non_nullable
              as List<LessonDto>,
    ));
  }

  @override
  $CategoryDtoCopyWith<$Res> get category {
    return $CategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $TopicDtoCopyWith<$Res> get topic {
    return $TopicDtoCopyWith<$Res>(_value.topic, (value) {
      return _then(_value.copyWith(topic: value));
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
  $Res call({CategoryDto category, TopicDto topic, List<LessonDto> lessons});

  @override
  $CategoryDtoCopyWith<$Res> get category;
  @override
  $TopicDtoCopyWith<$Res> get topic;
}

/// @nodoc
class __$$_LessonInfoDtoCopyWithImpl<$Res>
    extends _$LessonInfoDtoCopyWithImpl<$Res>
    implements _$$_LessonInfoDtoCopyWith<$Res> {
  __$$_LessonInfoDtoCopyWithImpl(
      _$_LessonInfoDto _value, $Res Function(_$_LessonInfoDto) _then)
      : super(_value, (v) => _then(v as _$_LessonInfoDto));

  @override
  _$_LessonInfoDto get _value => super._value as _$_LessonInfoDto;

  @override
  $Res call({
    Object? category = freezed,
    Object? topic = freezed,
    Object? lessons = freezed,
  }) {
    return _then(_$_LessonInfoDto(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as TopicDto,
      lessons: lessons == freezed
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
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(_lessons));

  @JsonKey(ignore: true)
  @override
  _$$_LessonInfoDtoCopyWith<_$_LessonInfoDto> get copyWith =>
      __$$_LessonInfoDtoCopyWithImpl<_$_LessonInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonInfoDtoToJson(this);
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
  CategoryDto get category => throw _privateConstructorUsedError;
  @override
  TopicDto get topic => throw _privateConstructorUsedError;
  @override
  List<LessonDto> get lessons => throw _privateConstructorUsedError;
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
      _$LessonDtoCopyWithImpl<$Res>;
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
class _$LessonDtoCopyWithImpl<$Res> implements $LessonDtoCopyWith<$Res> {
  _$LessonDtoCopyWithImpl(this._value, this._then);

  final LessonDto _value;
  // ignore: unused_field
  final $Res Function(LessonDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? learningPointId = freezed,
    Object? learningPointDifficultyId = freezed,
    Object? difficultyLevel = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      learningPointId: learningPointId == freezed
          ? _value.learningPointId
          : learningPointId // ignore: cast_nullable_to_non_nullable
              as int,
      learningPointDifficultyId: learningPointDifficultyId == freezed
          ? _value.learningPointDifficultyId
          : learningPointDifficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonDtoCopyWith<$Res> implements $LessonDtoCopyWith<$Res> {
  factory _$$_LessonDtoCopyWith(
          _$_LessonDto value, $Res Function(_$_LessonDto) then) =
      __$$_LessonDtoCopyWithImpl<$Res>;
  @override
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
class __$$_LessonDtoCopyWithImpl<$Res> extends _$LessonDtoCopyWithImpl<$Res>
    implements _$$_LessonDtoCopyWith<$Res> {
  __$$_LessonDtoCopyWithImpl(
      _$_LessonDto _value, $Res Function(_$_LessonDto) _then)
      : super(_value, (v) => _then(v as _$_LessonDto));

  @override
  _$_LessonDto get _value => super._value as _$_LessonDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? learningPointId = freezed,
    Object? learningPointDifficultyId = freezed,
    Object? difficultyLevel = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_LessonDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      learningPointId: learningPointId == freezed
          ? _value.learningPointId
          : learningPointId // ignore: cast_nullable_to_non_nullable
              as int,
      learningPointDifficultyId: learningPointDifficultyId == freezed
          ? _value.learningPointDifficultyId
          : learningPointDifficultyId // ignore: cast_nullable_to_non_nullable
              as int,
      difficultyLevel: difficultyLevel == freezed
          ? _value.difficultyLevel
          : difficultyLevel // ignore: cast_nullable_to_non_nullable
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
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.learningPointId, learningPointId) &&
            const DeepCollectionEquality().equals(
                other.learningPointDifficultyId, learningPointDifficultyId) &&
            const DeepCollectionEquality()
                .equals(other.difficultyLevel, difficultyLevel) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(learningPointId),
      const DeepCollectionEquality().hash(learningPointDifficultyId),
      const DeepCollectionEquality().hash(difficultyLevel),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_LessonDtoCopyWith<_$_LessonDto> get copyWith =>
      __$$_LessonDtoCopyWithImpl<_$_LessonDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonDtoToJson(this);
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
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'learning_point_id')
  int get learningPointId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'learning_point_difficulty_id')
  int get learningPointDifficultyId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'difficulty_level')
  int get difficultyLevel => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '')
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LessonDtoCopyWith<_$_LessonDto> get copyWith =>
      throw _privateConstructorUsedError;
}
