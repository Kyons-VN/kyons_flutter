import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/data/shared.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'knowledge_service_test.mocks.dart';

@GenerateNiceMocks([
  // MockSpec<Interceptors>(),
  MockSpec<Dio>(),
  MockSpec<SharedPreferences>(),
  MockSpec<Api>(),
  MockSpec<SharedRefService>(),
])
// class MockApi extends Mock implements Api {
//   @override
//   Dio get api =>
//       super.noSuchMethod(Invocation.getter(#api), returnValue: MockDio(), returnValueForMissingStub: MockDio());
// }

ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override>? overrides,
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides ?? [sharedRef.overrideWithValue(MockSharedRefService())],
    observers: observers,
  );
  addTearDown(container.dispose);
  return container;
}

void main() {
  late MockApi mockApi;
  late knowledge_service.KnowledgeApi knowledgeApi;
  late MockDio mockDio;
  late MockSharedRefService mockSharedRefService;

  setUpAll(() {
    provideDummy<Option<Unit>>(some(unit));
    provideDummy<Unit>(unit);
    // Ignore storage part
    TestWidgetsFlutterBinding.ensureInitialized();
    mockDio = MockDio();
    mockApi = MockApi();
    mockSharedRefService = MockSharedRefService();
    knowledgeApi = knowledge_service.KnowledgeApi(apiService: mockApi);
    when(mockApi.api).thenReturn(mockDio);
  });
  group('KnowledgeService', () {
    test('getSubjects should return a list of subjects', () async {
      // Arrange
      const data = [
        {'id': 1, 'name': 'Subject 1', 'label': '', 'programs': []},
        {
          'id': 2,
          'name': 'Subject 2',
          'label': '',
          'programs': [
            {'id': 1, 'name': 'Program 1', 'subject_id': 2},
            {'id': 2, 'name': 'Program 2', 'subject_id': 2},
          ]
        },
      ];
      // when(mockSharedRefService.getToken()).thenAnswer((_) async => 'token');
      when(mockDio.get(any))
          .thenAnswer((_) async => Response(data: data, statusCode: 200, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getSubjects().run(knowledgeApi);

      // Assert
      final expectedSubjects = [
        Subject(id: '1', name: 'Subject 1', label: '', programs: []),
        Subject(id: '2', name: 'Subject 2', label: '', programs: [
          Program(id: '1', name: 'Program 1', subjectId: '2'),
          Program(id: '2', name: 'Program 2', subjectId: '2'),
        ]),
      ];
      expect(result.isRight(), true);
      expect(result.getOrElse((l) => []).length, expectedSubjects.length);
      expect(result.getOrElse((l) => []).last.id, expectedSubjects.last.id);
      expect(result.getOrElse((l) => []).last.programs.length, expectedSubjects.last.programs.length);
      verify(mockDio.get(any)).called(1);
    });

    test('getSubjects should return serverError', () async {
      // Arrange
      when(mockSharedRefService.getToken()).thenAnswer((_) async => 'token');
      when(mockDio.get(any))
          .thenAnswer((_) async => Response(data: {}, statusCode: 500, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getSubjects().run(knowledgeApi);

      // Assert
      expect(result.isLeft(), true);
      expect(result.getLeft().isSome(), true);
      expect(result.getLeft().getOrElse(() => const ApiFailure.clientError()), isA<ApiServerError>());
      verify(mockDio.get(any)).called(1);
    });

    test('getSubjects should return clientError', () async {
      // Arrange
      when(mockSharedRefService.getToken()).thenAnswer((_) async => '');
      when(mockDio.get(any)).thenAnswer((_) async => Response(statusCode: 401, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getSubjects().run(knowledgeApi);

      // Assert
      expect(result.isLeft(), true);
      expect(result.getLeft().isSome(), true);
      expect(result.getLeft().getOrElse(() => const ApiFailure.serverError()), isA<UnAuthenticated>());
      verify(mockDio.get(any)).called(1);
    });

    test('getLearningGoalPath should return a learning goal path', () async {
      // Arrange
      const learningGoal = StudentLearningGoal(
        id: '1',
        name: 'Learning Goal 1',
        programName: 'Program 1',
        completePercentage: 10,
      );
      var data = {
        'categories': [
          {
            'category_id': 1,
            'category_name': 'Category 1',
            'completed': false,
            'lesson_list': [
              {
                'id': 'c88bf3d931b812d21011',
                'name': 'Lesson 1',
                'new': false,
              },
              {
                'id': 'c88bf3d931b812d21012',
                'name': 'Lesson 2',
                'new': true,
                'lesson_percentage': 65,
              },
            ],
          },
        ],
        'complete_percentage': 10
      };
      when(mockDio.get(any))
          .thenAnswer((_) async => Response(data: data, statusCode: 200, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getLearningGoalPath(learningGoal).run(knowledgeApi);

      // Assert
      final expectedPath = LearningGoalPath(
        lessonCategories: [
          LearningGoalCategory(
            category: const Category(id: '1', name: 'Category 1'),
            lessons: [
              LessonItem(
                id: 'c88bf3d931b812d21011',
                name: 'Lesson 1',
              ),
              LessonItem(
                id: 'c88bf3d931b812d21012',
                name: 'Lesson 2',
              ),
            ],
          ),
        ],
        progress: 10,
      );
      expect(result.isRight(), true);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).progress, expectedPath.progress);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).lessonCategories.length,
          expectedPath.lessonCategories.length);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).lessonCategories.last.category.id,
          expectedPath.lessonCategories.last.category.id);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).lessonCategories.last.lessons.last.id,
          expectedPath.lessonCategories.last.lessons.last.id);
      verify(mockDio.get(any)).called(1);
    });

    test('getLearningGoalPath should return a empty learning goal path', () async {
      // Arrange
      const learningGoal = StudentLearningGoal(
        id: '1',
        name: 'Learning Goal 1',
        programName: 'Program 1',
        completePercentage: 10,
      );
      var data = {
        'categories': [
          {
            'category_id': 1,
            'category_name': 'Category 1',
            'completed': false,
            'lesson_list': [],
          },
        ],
        'complete_percentage': 0
      };
      when(mockDio.get(any))
          .thenAnswer((_) async => Response(data: data, statusCode: 200, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getLearningGoalPath(learningGoal).run(knowledgeApi);

      // Assert
      final expectedPath = LearningGoalPath(
        lessonCategories: [
          LearningGoalCategory(
            category: const Category(id: '1', name: 'Category 1'),
            lessons: [],
          ),
        ],
        progress: 0,
      );
      expect(result.isRight(), true);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).progress, expectedPath.progress);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).lessonCategories.length,
          expectedPath.lessonCategories.length);
      expect(result.getOrElse((l) => LearningGoalPath.empty()).lessonCategories.last.category.id,
          expectedPath.lessonCategories.last.category.id);
      verify(mockDio.get(any)).called(1);
    });

    test('getLessonGroup should return a LessonGroup', () async {
      // Arrange
      final data = [
        {
          'id': '1',
          'name': 'Lesson 1',
          'category_id': 1,
          'category_name': 'Category 1',
          'topic_id': 1,
          'topic_name': 'Topic 1',
          'lessons': [
            {
              'id': 1,
              'name': 'Lesson 1',
              'content': 'Content',
              'learning_point_id': 1,
              'learning_point_difficulty_id': 1,
              'difficulty_level': 1
            }
          ]
        },
      ];
      when(mockDio.get(any))
          .thenAnswer((_) async => Response(data: data, statusCode: 200, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getLessonGroup('1').run(knowledgeApi);

      // Assert
      final expectedGroup = LessonGroup(
        id: '1',
        lessonInfos: [
          const LessonInfo(
            category: Category(id: '1', name: 'Category 1'),
            topic: Topic(id: '1', name: 'Topic 1'),
            lessons: [
              Lesson(
                id: '1',
                name: 'Lesson 1',
                content: 'Content',
                learningPointId: '1',
                learningPointDifficultyId: '1',
                difficultyLevel: 1,
                category: Category(id: '1', name: 'Category 1'),
                topic: Topic(id: '1', name: 'Topic 1'),
              )
            ],
          ),
        ],
      );

      // Assert
      expect(result.isRight(), true);
      expect(result.getOrElse((l) => LessonGroup.empty()).id, expectedGroup.id);
      expect(result.getOrElse((l) => LessonGroup.empty()).lessonInfos.length, expectedGroup.lessonInfos.length);
      expect(result.getOrElse((l) => LessonGroup.empty()).lessonInfos.last.category.id,
          expectedGroup.lessonInfos.last.category.id);
      expect(result.getOrElse((l) => LessonGroup.empty()).lessonInfos.last.topic.id,
          expectedGroup.lessonInfos.last.topic.id);
      expect(result.getOrElse((l) => LessonGroup.empty()).lessonInfos.last.lessons.last.id,
          expectedGroup.lessonInfos.last.lessons.last.id);
      verify(mockDio.get(any)).called(1);
    });

    test('getLessonGroup should return a SubscriptionExpired', () async {
      // Arrange
      when(mockDio.get(any))
          .thenAnswer((_) async => Response(data: {}, statusCode: 400, requestOptions: RequestOptions()));

      // Act
      final result = await knowledge_service.getLessonGroup('1').run(knowledgeApi);

      // Assert
      expect(result.isLeft(), true);
      expect(result.getLeft().isSome(), true);
      expect(result.getLeft().getOrElse(() => const ApiFailure.serverError()), isA<SubscriptionExpired>());
      verify(mockDio.get(any)).called(1);
    });
  });
}
