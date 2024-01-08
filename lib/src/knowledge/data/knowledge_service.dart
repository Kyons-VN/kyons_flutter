import 'dart:convert';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_entities.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/data/api.dart';
import '../../knowledge/data/knowledge_dto.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/domain/i_knowledge.dart';
import '../../test_knowledge/data/test_knowledge_dto.dart';

part 'knowledge_service.fp.dart';

class KnowledgeApi implements IKnowledgeApi {
  final Api apiService;

  KnowledgeApi({required this.apiService});

  @override
  Future<List<StudentLearningGoal>> getStudentLearningGoals() async {
    final response = apiService.api.get('/students/master_learning_goals');
    return response.then(handleResponseError).then((value) async {
      final data = value['data'] as List<dynamic>;
      // final data = [
      //   {
      //     "id": 100,
      //     "name": 'Kiểm tra 15 phút',
      //     "program_name": 'English 11',
      //     "complete_percentage": 100,
      //     "ordinal_number": 1,
      //     "subject_id": 1,
      //   },
      //   {
      //     "id": 97,
      //     "name": 'Kiểm tra 1 tiết',
      //     "program_name": 'English 12',
      //     "complete_percentage": 70,
      //     "ordinal_number": 2,
      //     "subject_id": 2,
      //   },
      // ];
      final result = data.map((json) {
        // json['learning_goal'] = {
        //   'id': json['learning_goal_id'],
        //   'name': json['learning_goal_name'],
        // };
        return StudentLearningGoalDto.fromJson(json).toDomain();
      }).toList();
      return result;
    });
  }

  @override
  Future<List<Subject>> getSubjects() {
    final response = apiService.api.get('/subjects');
    return response.then(handleResponseError).then((value) async {
      final data = value as List<dynamic>;
      final result = data.map((json) => SubjectDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  // @override
  // Future<TestContent> getDiagnosticTest(Program program) {
  //   final params = {'program_id': program.id};
  //   final response = api.get('/test/diagostic_test', queryParameters: params);
  //   return response.then(handleResponseError).then((value) async {
  //     final data = value as Map<String, dynamic>;
  //     final result = TestContentDto.fromJson(data).toDomain();
  //     return result;
  //   });
  // }

  // @override
  // Future<Unit> defaultLearningPath(Program program) {
  //   final params = {'program_id': program.id};
  //   final response = api.get('/test/skip_diagnostic_test', queryParameters: params);
  //   return response.then((res) {
  //     if (res.statusCode != 200) {
  //       return Future.error(const ApiFailure.serverError());
  //     }
  //     return unit;
  //   });
  // }

  @override
  Future<LearningGoalPath> getLearningGoalPath(StudentLearningGoal learningGoal) async {
    final response = apiService.api.get('/students/learning_goal/${learningGoal.id}/lessons');
    return response.then(handleResponseError).then((value) async {
      final data = value as Map<String, dynamic>;
      // data['complete_percentage'] = double.parse(data['complete_percentage']);
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
    final response = apiService.api.get('/lesson/$lessonGroupId');
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
    final string = prefs.getString(selectedProgramKey);
    if (string != null) {
      final json = jsonDecode(string);
      final program = Program(id: json['id'], name: json['name'], subjectId: json['subjectId']);
      return program;
    }
    throw const ClientFailure.storage();
  }

  @override
  Future<List<LearningPoint>> getLearningPoints(Program program) {
    final params = {'program_id': program.id};
    final response = apiService.api.get('/students/self_study_path', queryParameters: params);
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
    final response = apiService.api.post('/students/update_learning_path', data: params);
    return response.then(handleResponseError).then((value) async {
      return unit;
    });
  }

  @override
  Future<List<LearningGoal>> getLearningGoals(Program program) {
    final params = {'program_id': program.id};
    final response = apiService.api.get('/students/learning_goal/list', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final result = (value as List<dynamic>).map((json) => LearningGoalDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }

  @override
  Future<Unit> selectLearningGoal(LearningGoal learningGoal) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(mockLearningGoalKey, jsonEncode(learningGoal.toStudentLearningGoal().toJson()));
    return unit;
  }

  @override
  Future<Unit> selectStudentLearningGoal(StudentLearningGoal learningGoal) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(selectedStudentLearningGoalKey, jsonEncode(learningGoal.toJson()));
    return unit;
  }

  @override
  Future<List<TopicSelection>> getTopicsFromLearningGoal(LearningGoal learningGoal) {
    final params = {'learning_goal_id': learningGoal.id};
    final response = apiService.api.get('/students/learning_goal/details', queryParameters: params);
    return response.then(handleResponseError).then((value) async {
      final result = (value as List<dynamic>).map((json) => TopicDto.fromJson(json).toTopicSelection()).toList();
      return result;
    });
  }

  @override
  Future<StudentLearningGoal> getSelectedStudentLearningGoal() async {
    final prefs = await SharedPreferences.getInstance();
    final string = prefs.getString(selectedStudentLearningGoalKey);
    if (string != null) {
      final json = jsonDecode(string);
      final learningGoal = StudentLearningGoal(
        id: json['id'],
        name: json['name'],
        programName: json['programName'],
        completePercentage: json['completePercentage'],
      );
      return learningGoal;
    }
    throw const ClientFailure.storage();
  }

  @override
  Future<LearningGoal> getSelectedLearningGoal() async {
    final prefs = await SharedPreferences.getInstance();
    final string = prefs.getString(mockLearningGoalKey);
    if (string != null) {
      final json = jsonDecode(string);
      final learningGoal = LearningGoalDto.fromJson(json).toDomain();
      return learningGoal;
    }
    throw const ClientFailure.storage();
  }

  @override
  Future<LearningGoal> createLearningGoal(LearningGoal learningGoal, List<Topic> selectedTopics) {
    final params = {
      'master_id': learningGoal.id,
      'topic_list': selectedTopics.map((e) => int.parse(e.id)).toList(),
    };
    final response = apiService.api.post('/students/learning_goal/submit', data: params);
    return response.then(handleResponseError).then((value) async {
      log('createLearningGoal: $value');
      return LearningGoalDto.fromJson(value).toDomain();
    });
  }

  // @override
  // Future<Unit> setSelectedCatIndex(int index) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt(selectedCatIndexKey, index);
  //   return unit;
  // }

  // @override
  // Future<int> getSelectedCatIndex() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getInt(selectedCatIndexKey) ?? 0;
  // }

  @override
  Future<List<MockTestItem>> getLearningGoalMockTests(StudentLearningGoal learningGoal) {
    final response = apiService.api.post('/students/learning_goal/submit${learningGoal.id}/mock_tests');
    return response.then(handleResponseError).then((value) async {
      log('getLearningGoalMockTests: $value');
      final data = value['data'] as List<dynamic>;
      final result = data.map((json) {
        return MockTestItemDto.fromJson(json).toDomain();
      }).toList();
      return result;
    });
  }

  @override
  Future<List<MockTestItem>> getMockTestItems(StudentLearningGoal learningGoal) {
    final response = apiService.api.get('/students/learning_goal/${learningGoal.id}/mock_tests');
    return response.then(handleResponseError).then((value) async {
      var data = value['data'] as List<dynamic>;
      // data = {
      //   "data": [
      //     {"id": 1, "created_date": "2023-01-01 15:50:45", "status": "learning_path_deactivated", "score": 8},
      //     {"id": 6, "created_date": "2023-01-10 10:53:20", "status": "learning_path_deactivated", "score": 8},
      //     {"id": 12, "created_date": "2023-01-12 10:53:20", "status": "learning_path_activated", "score": 3},
      //     {"id": 68, "created_date": "2023-03-15 10:53:20", "status": "mock_test_submitted", "score": 6},
      //     {"id": 100, "created_date": "2023-04-02 10:53:20", "status": "mock_test_submitted", "score": 6},
      //     {"id": 101, "created_date": "2023-04-02 11:53:20", "status": "new"},
      //     {"id": 102, "created_date": "2023-04-02 12:53:20", "status": "new"}
      //   ]
      // };
      // data['complete_percentage'] = double.parse(data['complete_percentage']);
      // // data['complete_percentage'] = 10;
      // final categories = data['categories'] as List<dynamic>;
      // data['categories'] = categories.map((cat) {
      //   cat['category'] = {
      //     'id': cat['category_id'],
      //     'name': cat['category_name'],
      //   };
      //   // cat['completed'] = true;
      //   return cat;
      // }).toList();
      final result = data.map((json) => MockTestItemDto.fromJson(json).toDomain()).toList();
      return result;
    });
  }
}
