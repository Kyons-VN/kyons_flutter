import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/tracking/app/tracking_provider.dart';
import 'package:kyons_flutter/src/tracking/data/tracking_api.dart';
import 'package:kyons_flutter/src/tracking/data/tracking_service.dart' as tracking_service;
import 'package:kyons_flutter/src/tracking/domain/i_tracking.dart';

part 'lesson_provider.freezed.dart';
part 'lesson_state.dart';

class LessonNotifier extends StateNotifier<LessonState> {
  final IKnowledge knowledgeApi;
  String lessonGroupId = '';

  LessonNotifier._(this.knowledgeApi) : super(LessonState.initial());

  factory LessonNotifier.setup(IKnowledge knowledgeApi) => LessonNotifier._(knowledgeApi);

  Future<void> init(String lessonGroupId) async {
    state = LessonState.loading();
    lessonGroupId = lessonGroupId;
    final Either<ApiFailure, LessonGroup> failureOrSuccess =
        await knowledge_service.getLessonGroup(lessonGroupId).run(knowledgeApi);
    state = failureOrSuccess.fold(
      (l) => LessonState.error(l.toString()),
      (lessonGroup) => LessonState.data(lessonGroup),
    );
  }
}

final lessonNotifierProvider = StateNotifierProvider.autoDispose<LessonNotifier, LessonState>(
    (ref) => LessonNotifier.setup(ref.read(knowledgeApi)));

enum TabMenu {
  study,
  exercise,
  test,
}

class LessonStudyNotifier extends StateNotifier<LessonStudyState> {
  late List<String> idsList = [];
  late List<Lesson> lessonsList = [];
  late Map<String, int> idToIndexMap = {};
  final TrackingApi trackingApi;
  String lessonGroupId = '';

  LessonStudyNotifier(this.trackingApi) : super(LessonStudyState.initial());

  Future<void> init(LessonGroup lessonGroup) async {
    state = LessonStudyState.initial();
    lessonGroupId = lessonGroup.id;
    lessonsList =
        lessonGroup.lessonInfos.map((lg) => lg.lessons).toList().reduce((acc, next) => List.from(acc)..addAll(next));
    idsList = lessonsList.map((lesson) => lesson.id).toList();
    idToIndexMap = Map.fromIterables(idsList, List.generate(idsList.length, (index) => index));
    state = state.copyWith(selectedLessonIndex: 0, selectedLessonId: _getIdFromIndex(0));
    enableTracking();
  }

  void select(Lesson lesson) {
    state = state.copyWith(selectedLessonId: lesson.id, selectedLessonIndex: _getIndexFromId(lesson.id));
  }

  void pre() {
    final currentIndex = state.selectedLessonIndex;
    if (currentIndex == 0) return;
    state = state.copyWith(selectedLessonIndex: currentIndex - 1, selectedLessonId: _getIdFromIndex(currentIndex - 1));
  }

  void next() {
    final currentIndex = state.selectedLessonIndex;
    if (currentIndex == idsList.length - 1) return;
    state = state.copyWith(selectedLessonIndex: currentIndex + 1, selectedLessonId: _getIdFromIndex(currentIndex + 1));
  }

  _getIndexFromId(String id) => idToIndexMap[id];
  _getIdFromIndex(int index) => idsList[index];

  Lesson getSelectedLesson(int selectedLessonIndex) => lessonsList[selectedLessonIndex];

  Future<void> selectTabIndex(TabMenu tab) async {
    if (tab == state.selectedTabIndex) return;
    state = state.copyWith(selectedTabIndex: tab);
    if (_sub != null) await _sub!.cancel();
    enableTracking();
  }

  StreamSubscription? _sub;
  void enableTracking() {
    print(lessonGroupId);
    if (lessonGroupId.isEmpty) return;
    final Stream<Either<ApiFailure<dynamic>, Unit>> myStream =
        Stream.periodic(const Duration(seconds: 10), ((e) => e + 1)).asyncExpand((event) {
      return tracking_service
          .trackOnLesson(lessonGroupId, TrackingLessonType.values[state.selectedTabIndex.index])
          .run(trackingApi)
          .asStream();
    });
    _sub = myStream.listen((successOrFailure) {
      successOrFailure.fold(
        (l) async {
          print('Cancel');
          if (_sub != null) await _sub!.cancel();
        },
        (data) {},
      );
    });
  }

  void disableTracking() async {
    if (_sub != null) await _sub!.cancel();
  }

  @override
  void dispose() async {
    print('dispose');
    if (_sub != null) await _sub!.cancel();
    super.dispose();
  }
}

final lessonStudyNotifierProvider = StateNotifierProvider.autoDispose<LessonStudyNotifier, LessonStudyState>(
    (ref) => LessonStudyNotifier(ref.read(tracking)));
