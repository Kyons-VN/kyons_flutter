import 'package:freezed_annotation/freezed_annotation.dart';
import '../../knowledge/domain/i_knowledge.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    @JsonKey(name: 'study_type') required StudyType studyType,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  factory User.empty() => const User(
        id: '',
        firstName: '',
        lastName: '',
        email: '',
        studyType: StudyType.ai,
      );
}
