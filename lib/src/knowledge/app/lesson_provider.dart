import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;
import '../../knowledge/domain/i_knowledge.dart';
import '../../tracking/app/tracking_provider.dart';
import '../../tracking/data/tracking_api.dart';
import '../../tracking/data/tracking_service.dart' as tracking_service;
import '../../tracking/domain/i_tracking.dart';

part 'lesson_provider.freezed.dart';
part 'lesson_state.dart';

class LessonNotifier extends StateNotifier<LessonState> {
  final IKnowledgeApi knowledgeApi;
  final ITracking trackingApi;
  final String lessonGroupId;

  LessonNotifier(this.knowledgeApi, this.trackingApi, this.lessonGroupId) : super(LessonState.initial()) {
    init();
  }

  // factory LessonNotifier.setup(IKnowledge knowledgeApi) => LessonNotifier._(knowledgeApi);

  Future<void> init() async {
    state = state.copyWith(isLoading: true);
    final Either<ApiFailure, LessonGroup> failureOrSuccess =
        await knowledge_service.getLessonGroup(lessonGroupId).run(knowledgeApi);
    final selectedProgram = await knowledge_service.getSelectedProgram().run(knowledgeApi);
    if (selectedProgram.isLeft()) {
      state = LessonState.clientError(selectedProgram.getLeft().getOrElse(() => const ClientFailure.storage()));
      return;
    }
    state = failureOrSuccess.fold(
      (l) => LessonState.apiError(l),
      (lessonGroup) => LessonState.data(
        lessonGroup,
        selectedProgram.getOrElse((_) => Program.empty()),
      ),
    );
  }
}

final lessonNotifierProvider = StateNotifierProvider.autoDispose.family<LessonNotifier, LessonState, String>(
    (ref, lessonGroupId) => LessonNotifier(ref.read(knowledgeApiProvider), ref.read(tracking), lessonGroupId));

enum TabMenu {
  study,
  exercise,
  test,
}

class LessonStudyNotifier extends StateNotifier<LessonStudyState> {
  // late List<String> idsList = [];
  // late List<Lesson> lessonsList = [];
  // late Map<String, int> idToIndexMap = {};
  final TrackingApi trackingApi;
  String lessonGroupId = '';

  LessonStudyNotifier(this.trackingApi) : super(LessonStudyState.initial());

  Future<void> init(String lessonGroupId) async {
    state = LessonStudyState.initial();
    // lessonGroupId = lessonGroup.id;
    // lessonsList =
    //     lessonGroup.lessonInfos.map((lg) => lg.lessons).toList().reduce((acc, next) => List.from(acc)..addAll(next));
    // idsList = lessonsList.map((lesson) => lesson.id).toList();
    // idToIndexMap = Map.fromIterables(idsList, List.generate(idsList.length, (index) => index));
    // state = state.copyWith(selectedLessonIndex: 0, selectedLessonId: _getIdFromIndex(0));
    enableTracking();
  }

  // void select(Lesson lesson) {
  //   state = state.copyWith(selectedLessonId: lesson.id, selectedLessonIndex: _getIndexFromId(lesson.id));
  // }

  // void pre() {
  //   final currentIndex = state.selectedLessonIndex;
  //   if (currentIndex == 0) return;
  //   state = state.copyWith(selectedLessonIndex: currentIndex - 1, selectedLessonId: _getIdFromIndex(currentIndex - 1));
  // }

  // void next() {
  //   final currentIndex = state.selectedLessonIndex;
  //   if (currentIndex == idsList.length - 1) return;
  //   state = state.copyWith(selectedLessonIndex: currentIndex + 1, selectedLessonId: _getIdFromIndex(currentIndex + 1));
  // }

  // _getIndexFromId(String id) => idToIndexMap[id];
  // _getIdFromIndex(int index) => idsList[index];

  // Lesson getSelectedLesson(int selectedLessonIndex) => lessonsList[selectedLessonIndex];

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
