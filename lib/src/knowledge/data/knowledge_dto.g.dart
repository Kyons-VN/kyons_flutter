// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'knowledge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubjectDto _$$_SubjectDtoFromJson(Map<String, dynamic> json) =>
    _$_SubjectDto(
      id: json['id'] as int,
      label: json['label'] as String,
      programs: (json['programs'] as List<dynamic>)
          .map((e) => ProgramDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SubjectDtoToJson(_$_SubjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'programs': instance.programs,
    };

_$_ProgramDto _$$_ProgramDtoFromJson(Map<String, dynamic> json) =>
    _$_ProgramDto(
      id: json['id'] as int,
      name: json['name'] as String,
      subjectId: json['subject_id'] as int,
    );

Map<String, dynamic> _$$_ProgramDtoToJson(_$_ProgramDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subject_id': instance.subjectId,
    };
