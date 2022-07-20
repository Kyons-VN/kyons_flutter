// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorSessionStatusDto _$$_TutorSessionStatusDtoFromJson(
        Map<String, dynamic> json) =>
    _$_TutorSessionStatusDto(
      status: json['status'] as String,
      meetingUrl: json['meeting_url'] as String? ?? '',
    );

Map<String, dynamic> _$$_TutorSessionStatusDtoToJson(
        _$_TutorSessionStatusDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'meeting_url': instance.meetingUrl,
    };
