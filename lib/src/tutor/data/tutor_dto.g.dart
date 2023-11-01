// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TutorSessionStatusDtoImpl _$$TutorSessionStatusDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TutorSessionStatusDtoImpl(
      status: json['status'] as String,
      meetingUrl: json['meeting_url'] as String? ?? '',
    );

Map<String, dynamic> _$$TutorSessionStatusDtoImplToJson(
        _$TutorSessionStatusDtoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'meeting_url': instance.meetingUrl,
    };
