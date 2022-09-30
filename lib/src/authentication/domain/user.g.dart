// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      studyType: $enumDecode(_$StudyTypeEnumMap, json['study_type']),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'study_type': _$StudyTypeEnumMap[instance.studyType]!,
    };

const _$StudyTypeEnumMap = {
  StudyType.ai: 'ai',
  StudyType.selfStudy: 'self_study',
};
