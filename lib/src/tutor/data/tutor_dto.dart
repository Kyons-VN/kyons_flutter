import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyons_flutter/src/tutor/domain/session.dart';

part 'tutor_dto.freezed.dart';
part 'tutor_dto.g.dart';

@freezed
class TutorSessionStatusDto with _$TutorSessionStatusDto {
  const TutorSessionStatusDto._();
  const factory TutorSessionStatusDto({
    required String status,
    @JsonKey(name: 'meeting_url', defaultValue: '') required String meetingUrl,
  }) = _TutorSessionStatusDto;
  factory TutorSessionStatusDto.fromJson(Map<String, dynamic> json) => _$TutorSessionStatusDtoFromJson(json);

  TutorSessionStatus toDomain() => TutorSessionStatus(
      status: status == 'PROCESSING' ? SessionStatus.processing : SessionStatus.created, meetUrl: meetingUrl);
}
