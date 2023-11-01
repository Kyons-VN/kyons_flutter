import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/data/user_dto.dart';

import '../../knowledge/domain/i_knowledge.dart';
import '../domain/i_user.dart';

class User implements IUser {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final StudyType studyType;
  @override
  final String phone;
  @override
  final String grade;
  @override
  final String school;
  @override
  final String address;
  @override
  final DateTime birthdate;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.studyType,
    required this.phone,
    required this.grade,
    required this.school,
    required this.address,
    required this.birthdate,
  });

  factory User.empty() => User(
        id: '',
        firstName: '',
        lastName: '',
        email: '',
        studyType: StudyType.ai,
        phone: '',
        grade: '',
        school: '',
        address: '',
        birthdate: dateNow.run(),
      );

  UserDto toDto() => UserDto(
        id: id,
        email: email,
        firstName: firstName,
        lastName: lastName,
        studyType: studyType,
        address: address,
        birthdate: birthdate,
        grade: grade,
        phone: phone,
        school: school,
      );
}
