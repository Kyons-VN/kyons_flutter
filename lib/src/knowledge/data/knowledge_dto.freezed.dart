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
