import 'dart:convert';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_dto.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge_dto.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Knowledge implements IKnowledge {
  final api = Api.init().api;

  @override
  Future<List<Program>> getStudentProgram() async {
    // final response = api.get('$serverApi/');
    final response = api.get('$serverApi/students/programs');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<dynamic>;
      final result = data.map((json) {
        json['learning_goal'] = {
          'id': json['learning_goal_id'],
          'name': json['learning_goal_name'],
        };
        return ProgramDto.fromJson(json).toDomain();
      }).toList();
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
  Future<LearningGoalPath> getLearningGoalPath(Program program, LearningGoal learningGoal) {
    final params = {'program_id': program.id, 'learning_goal_id': learningGoal.id};
    final response = api.get('$serverApi/lesson/list', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      data['complete_percentage'] = double.parse(data['complete_percentage']);
      // data['complete_percentage'] = 10;
      final categories = data['categories'] as List<dynamic>;
      data['categories'] = categories.map((cat) {
        cat['category'] = {
          'id': cat['category_id'],
          'name': cat['category_name'],
        };
        // cat['completed'] = true;
        return cat;
      }).toList();
      final result = LearningGoalPathDto.fromJson(data).toDomain();
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
    final program = Program(id: json['id'], name: json['name'], subjectId: json['subjectId']);
    return program;
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

  @override
  Future<List<LearningGoal>> getLearningGoals(Program program) {
    final params = {'program_id': program.id};
    final response = api.get('$serverApi/students/learning_goal/list', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final result = (value as List<dynamic>).map((json) => LearningGoalDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<Unit> selectLearningGoal(LearningGoal learningGoal) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(selectedLearningGoalKey, jsonEncode(learningGoal.toJson()));
    return unit;
  }

  @override
  Future<List<TopicSelection>> getTopicsFromLearningGoal(LearningGoal learningGoal) {
    final params = {'learning_goal_id': learningGoal.id};
    final response = api.get('$serverApi/students/learning_goal/details', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final result = (value as List<dynamic>).map((json) => TopicDto.fromJson(json).toTopicSelection()).toList();
      return result;
    });
  }

  @override
  Future<LearningGoal> getSelectedLearningGoal() async {
    final prefs = await SharedPreferences.getInstance();
    final json = jsonDecode(prefs.getString(selectedLearningGoalKey) ?? LearningGoal.emptyJsonString());
    final learningGoal = LearningGoal(
      id: json['id'],
      name: json['name'],
      progress: json['progress'],
      maxTopics: json['maxTopic'],
      minTopics: json['minTopic'],
    );
    return learningGoal;
  }

  @override
  Future<LearningGoal> createLearningGoal(LearningGoal learningGoal, List<Topic> selectedTopics) {
    final params = {
      'master_id': learningGoal.id,
      'topic_list': selectedTopics.map((e) => int.parse(e.id)).toList(),
    };
    final response = api.post('$serverApi/students/learning_goal/submit', data: params);
    return response.then(handleResponseError).then((value) async {
      log('createLearningGoal: $value');
      return LearningGoal(id: value['learning_goal_id'].toString(), name: value['learning_goal_name'], progress: 0);
    });
  }

  @override
  Future<Unit> setSelectedCatIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(selectedCatIndexKey, index);
    return unit;
  }

  @override
  Future<int> getSelectedCatIndex() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(selectedCatIndexKey) ?? 0;
  }
}
