import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/knowledge/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';

part 'new_lesson_provider.freezed.dart';
part 'new_lesson_state.dart';

class NewLessonNotifier extends StateNotifier<NewLessonState> {
  final IKnowledge knowledgeApi;

  NewLessonNotifier(this.knowledgeApi) : super(NewLessonState.initial());

  Future<Unit> init() async {
    state = NewLessonState.loading();
    final selectedProgram = await knowledge_service.getSelectedProgram().run(knowledgeApi);
    if (selectedProgram.isLeft()) {
      state = NewLessonState.error(const ApiFailure.serverError());
      return unit;
    }
    final successOrFailure =
        await knowledge_service.getLearningPoints(selectedProgram.getOrElse((l) => Program.empty())).run(knowledgeApi);
    state = successOrFailure.isLeft()
        ? NewLessonState.error(successOrFailure.getLeft().getOrElse(() => ApiFailure.serverError()))
        : NewLessonState.data(successOrFailure.getOrElse((l) => []));
    return unit;
  }

  Unit select(LearningPoint learningPoint) {
    final selectedIds = List<String>.from(state.selectedIds)..add(learningPoint.id);
    state = state.copyWith(selectedIds: selectedIds);
    return unit;
  }

  Unit deselect(LearningPoint learningPoint) {
    final selectedIds = List<String>.from(state.selectedIds)..removeWhere((value) => value == learningPoint.id);
    state = state.copyWith(selectedIds: selectedIds);
    return unit;
  }

  Unit submit() {
    knowledge_service.createLesson(state.selectedIds).run(knowledgeApi);
    return unit;
  }
}

final newLessonNotifierProvider = StateNotifierProvider.autoDispose<NewLessonNotifier, NewLessonState>(
    (ref) => NewLessonNotifier(ref.read(knowledge)));
