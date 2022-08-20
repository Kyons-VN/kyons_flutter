import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_dto.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Knowledge implements IKnowledge {
  final api = Api.init().api;

  @override
  Future<List<Program>> getStudentProgram() async {
    // final response = api.get('$serverApi/');
    final response = api.get('$serverApi/students/programs');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<dynamic>;
      final result = data.map((json) => ProgramDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<List<Subject>> getSubjects() {
    final response = api.get('$serverApi/subjects');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<dynamic>;
      final result = data.map((json) => SubjectDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<TestContent> getDiagnosticTest(Program program) {
    final params = {'program_id': program.id};
    final response = api.get('$serverApi/test/diagostic_test', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      final result = TestContentDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<Unit> defaultLearningPath(Program program) {
    final params = {'program_id': program.id};
    final response = api.get('$serverApi/test/skip_diagnostic_test', queryParameters: params);
    return response.then((res) {
      if (res.statusCode != 200) {
        return Future.error(const ApiFailure.serverError());
      }
      return unit;
    });
  }

  @override
  Future<LearningPath> getLearningPath(Program program) {
    final params = {'program_id': program.id};
    final response = api.get('$serverApi/lesson/list', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final data = {
        'lessonsDto': (value as List<dynamic>).map((lessonJson) {
          lessonJson['new'] = lessonJson['new'] ?? false;
          return lessonJson;
        }).toList()
      };
      final result = LearningPathDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<LessonGroup> getLessonGroup(String lessonGroupId) {
    final response = api.get('$serverApi/lesson/$lessonGroupId');
    return response.then(handleResponseError).then((value) async {
      final data = {
        'id': lessonGroupId,
        'lessonInfos': (value as List<dynamic>).map((lessonGroupJson) {
          lessonGroupJson['category'] = {
            'id': lessonGroupJson['category_id'],
            'name': lessonGroupJson['category_name'],
          };
          lessonGroupJson['topic'] = {
            'id': lessonGroupJson['topic_id'],
            'name': lessonGroupJson['topic_name'],
          };
          return lessonGroupJson;
        }).toList()
      };
      final result = LessonGroupDto.fromJson(data).toDomain();
      return result;
    });
  }

  @override
  Future<Unit> selectProgram(Program program) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(selectedProgramKey, jsonEncode(program.toJson()));
    return unit;
  }

  @override
  Future<Unit> removeSelectedProgram() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(selectedProgramKey);
    return unit;
  }

  @override
  Future<Program> getSelectedProgram() async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonDecode(prefs.getString(selectedProgramKey) ?? Program.emptyJsonString());
    final Program program = Program(id: json['id'], name: json['name'], subjectId: json['subjectId']);
    return Future.value(program);
  }

  @override
  Future<List<LearningPoint>> getLearningPoints(Program program) {
    final params = {'program_id': program.id};
    final response = api.get('$serverApi/students/self_study_path', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final result = (value as List<dynamic>).map((json) => LearningPointDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<Unit> createLesson(Program program, List<String> difficultyIds) {
    final params = {
      'learning_point_difficulty_ids': difficultyIds,
      'program_id': program.id,
    };
    final response = api.post('$serverApi/students/update_learning_path', data: params);
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }
}
