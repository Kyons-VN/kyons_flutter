import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/data/auth_entities.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';

void main() {
  group('User', () {
    test('should create an empty user', () {
      final user = User.empty();

      expect(user.id, '');
      expect(user.firstName, '');
      expect(user.lastName, '');
      expect(user.email, '');
      expect(user.studyType, StudyType.ai);
      expect(user.phone, '');
      expect(user.grade, '');
      expect(user.school, '');
      expect(user.address, '');
      expect(user.birthdate, none());
    });

    test('should convert user to DTO', () {
      final user = User(
        id: '123',
        firstName: 'John',
        lastName: 'Doe',
        email: 'john.doe@example.com',
        studyType: StudyType.ai,
        phone: '1234567890',
        grade: 'A',
        school: 'ABC School',
        address: '123 Main St',
        birthdate: some(DateTime(1990, 1, 1)),
      );

      final dto = user.toDto();

      expect(dto.id, '123');
      expect(dto.firstName, 'John');
      expect(dto.lastName, 'Doe');
      expect(dto.email, 'john.doe@example.com');
      expect(dto.studyType, StudyType.ai);
      expect(dto.phone, '1234567890');
      expect(dto.grade, 'A');
      expect(dto.school, 'ABC School');
      expect(dto.address, '123 Main St');
      expect(dto.birthdate, '1990-01-01T00:00:00.000');
    });
  });
}
