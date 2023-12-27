import 'package:fpdart/fpdart.dart';

import '../../knowledge/domain/i_knowledge.dart';

abstract class IUser {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final StudyType studyType;
  final String phone;
  final String grade;
  final String school;
  final String address;
  final Option<DateTime> birthdate;

  IUser(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.studyType,
      required this.phone,
      required this.grade,
      required this.school,
      required this.address,
      required this.birthdate});
}
