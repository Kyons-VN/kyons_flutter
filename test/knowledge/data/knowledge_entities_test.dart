import 'package:flutter_test/flutter_test.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_dto.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';

void main() {
  group('Subject', () {
    test('toJson should return a valid JSON map', () {
      final subject = Subject(
        id: '1',
        name: 'Math',
        label: 'MTH',
        programs: [
          Program(
            subjectId: '1',
            id: '1',
            name: 'Program 1',
          ),
        ],
      );

      final json = subject.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['id'], 1);
      expect(json['name'], 'Math');
      expect(json['label'], 'MTH');
      expect(json['programs'], isA<List<Map<String, dynamic>>>());
      expect(json['programs'].length, 1);
      expect(json['programs'][0], isA<Map<String, dynamic>>());
      expect(json['programs'][0]['id'], 1);
      expect(json['programs'][0]['name'], 'Program 1');
      expect(json['programs'][0]['subject_id'], 1);
    });

    test('empty should return an empty Subject object', () {
      final subject = Subject.empty();

      expect(subject.id, '');
      expect(subject.name, '');
      expect(subject.label, '');
      expect(subject.programs, isEmpty);
    });

    test('fromJson should return a valid Subject', () {
      final json = {
        'id': 1,
        'name': 'Math',
        'label': 'MTH',
        'programs': [
          {
            'id': 1,
            'name': 'Program 1',
            'subject_id': 1,
          },
        ],
      };
      final Subject subject = SubjectDto.fromJson(json).toDomain();

      expect(subject, isA<Subject>());

      expect(subject.id, '1');
      expect(subject.name, 'Math');
      expect(subject.label, 'MTH');
      expect(subject.programs, isA<List>());
      expect(subject.programs.length, 1);
      expect(subject.programs[0], isA<Program>());
      // expect(subject.programs, isA<List<Program>>); will fail
      expect(subject.programs[0].id, '1');
      expect(subject.programs[0].name, 'Program 1');
      expect(subject.programs[0].subjectId, '1');
    });
  });

  group('Program', () {
    test('toJson should return a valid JSON map', () {
      final program = Program(
        subjectId: '1',
        id: '1',
        name: 'Program 1',
      );

      final json = program.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['id'], 1);
      expect(json['name'], 'Program 1');
      expect(json['subject_id'], 1);
    });

    test('empty should return an empty Program object', () {
      final program = Program.empty();

      expect(program.subjectId, '');
      expect(program.id, '');
      expect(program.name, '');
    });

    test('fromJson should return a valid Program', () {
      final json = {
        'id': 1,
        'name': 'Program 1',
        'subject_id': 1,
      };
      final Program program = ProgramDto.fromJson(json).toDomain();

      expect(program, isA<Program>());

      expect(program.subjectId, '1');
      expect(program.id, '1');
      expect(program.name, 'Program 1');
    });
  });

  group('LearningGoal', () {
    test('toJson should return a valid JSON map', () {
      final learningGoal = LearningGoal(
        id: '1',
        name: 'Learning Goal 1',
        maxTopics: 1,
        minTopics: 1,
        mockTestTemplates: [
          const MockTestTemplate(
            id: '1',
            name: 'Mock Test Template 1',
          ),
        ],
        canSelectTopic: true,
        testDuration: 1,
        totalQuestions: 1,
      );

      final json = learningGoal.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['id'], 1);
      expect(json['name'], 'Learning Goal 1');
      expect(json['max_topic_numb'], 1);
      expect(json['min_topic_numb'], 1);
      expect(json['mock_test_templates'], isA<List<Map<String, dynamic>>>());
      expect(json['mock_test_templates'].length, 1);
      expect(json['mock_test_templates'][0], isA<Map<String, dynamic>>());
      expect(json['mock_test_templates'][0]['id'], 1);
      expect(json['mock_test_templates'][0]['name'], 'Mock Test Template 1');
      expect(json['allow_select'], true);
      expect(json['mock_test_duration'], 1);
      expect(json['numb_questions'], 1);
    });

    test('empty should return an empty LearningGoal object', () {
      final learningGoal = LearningGoal.empty();

      expect(learningGoal.id, '');
      expect(learningGoal.name, '');
      expect(learningGoal.maxTopics, null);
      expect(learningGoal.minTopics, null);
      expect(learningGoal.mockTestTemplates, isEmpty);
      expect(learningGoal.canSelectTopic, false);
      expect(learningGoal.testDuration, 0);
      expect(learningGoal.totalQuestions, 0);
    });

    test('fromJson should return a valid LearningGoal', () {
      final json = {
        'id': 1,
        'name': 'Learning Goal 1',
        'max_topic_numb': 1,
        'min_topic_numb': 1,
        'mock_test_templates': [
          {
            'id': 1,
            'name': 'Mock Test Template 1',
          },
        ],
        'allow_select': true,
        'mock_test_duration': 1,
        'numb_questions': 1,
      };
      final LearningGoal learningGoal = LearningGoalDto.fromJson(json).toDomain();
      expect(learningGoal, isA<LearningGoal>());
      expect(learningGoal.id, '1');
      expect(learningGoal.name, 'Learning Goal 1');
      expect(learningGoal.maxTopics, 1);
      expect(learningGoal.minTopics, 1);
      expect(learningGoal.mockTestTemplates, isA<List>());
      expect(learningGoal.mockTestTemplates.length, 1);
      expect(learningGoal.mockTestTemplates[0], isA<MockTestTemplate>());
      expect(learningGoal.mockTestTemplates[0].id, '1');
      expect(learningGoal.mockTestTemplates[0].name, 'Mock Test Template 1');
      expect(learningGoal.canSelectTopic, true);
      expect(learningGoal.testDuration, 1);
      expect(learningGoal.totalQuestions, 1);
    });
  });

  group('MockTestTemplate', () {
    test('toJson should return a valid JSON map', () {
      const mockTestTemplate = MockTestTemplate(
        id: '1',
        name: 'Mock Test Template 1',
      );

      final json = mockTestTemplate.toJson();

      expect(json, isA<Map<String, dynamic>>());
      expect(json['id'], 1);
      expect(json['name'], 'Mock Test Template 1');
    });

    test('fromJson should return a valid MockTestTemplate', () {
      final json = {
        'id': 1,
        'name': 'Mock Test Template 1',
      };
      final MockTestTemplate mockTestTemplate = MockTestTemplateDto.fromJson(json).toDomain();
      expect(mockTestTemplate, isA<MockTestTemplate>());
      expect(mockTestTemplate.id, '1');
      expect(mockTestTemplate.name, 'Mock Test Template 1');
    });
  });
}
