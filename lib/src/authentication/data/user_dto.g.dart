// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      studyType: $enumDecode(_$StudyTypeEnumMap, json['study_type'],
          unknownValue: StudyType.ai),
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'study_type': _$StudyTypeEnumMap[instance.studyType]!,
    };

const _$StudyTypeEnumMap = {
  StudyType.ai: 'ai',
  StudyType.selfStudy: 'self_study',
};
