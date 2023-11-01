// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDtoImpl _$$UserDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserDtoImpl(
      id: json['id'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      birthdate: DateTime.parse(json['birthdate'] as String),
      grade: json['grade'] as String,
      phone: json['phone'] as String,
      school: json['school'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      studyType: $enumDecode(_$StudyTypeEnumMap, json['study_type'],
          unknownValue: StudyType.ai),
    );

Map<String, dynamic> _$$UserDtoImplToJson(_$UserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'email': instance.email,
      'birthdate': instance.birthdate.toIso8601String(),
      'grade': instance.grade,
      'phone': instance.phone,
      'school': instance.school,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'study_type': _$StudyTypeEnumMap[instance.studyType]!,
    };

const _$StudyTypeEnumMap = {
  StudyType.ai: 'ai',
  StudyType.selfStudy: 'self_study',
};
