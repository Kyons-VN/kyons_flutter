import 'package:freezed_annotation/freezed_annotation.dart';

import '../../knowledge/domain/i_knowledge.dart';
import 'auth_entities.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();
  const factory UserDto({
    required String id,
    required String address,
    required String email,
    required DateTime birthdate,
    required String grade,
    required String phone,
    required String school,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'study_type', unknownEnumValue: StudyType.ai) @JsonEnum() required StudyType studyType,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
  User toDomain() => User(
      id: id,
      email: email,
      firstName: firstName,
      lastName: lastName,
      studyType: studyType,
      address: address,
      birthdate: birthdate,
      grade: grade,
      phone: phone,
      school: school);
}
