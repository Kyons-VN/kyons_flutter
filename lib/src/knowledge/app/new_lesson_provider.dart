import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/domain/i_knowledge.dart';
import '../data/knowledge_service.dart' as knowledge_service;

part 'new_lesson_provider.freezed.dart';
part 'new_lesson_state.dart';

class NewLessonNotifier extends StateNotifier<NewLessonState> {
  final IKnowledgeApi knowledgeApi;
  late Program selectedProgram;

  NewLessonNotifier(this.knowledgeApi) : super(NewLessonState.initial());

  Future<Unit> init() async {
    state = NewLessonState.loading();
    final selectedProgramSuccessOrFailure = await knowledge_service.getSelectedProgram().run(knowledgeApi);
    if (selectedProgramSuccessOrFailure.isLeft()) {
      state = NewLessonState.error(const ApiFailure.serverError());
      return unit;
    } else {
      selectedProgram = selectedProgramSuccessOrFailure.getOrElse((l) => Program.empty());
      final successOrFailure = await knowledge_service.getLearningPoints(selectedProgram).run(knowledgeApi);
      state = successOrFailure.isLeft()
          ? NewLessonState.error(successOrFailure.getLeft().getOrElse(() => const ApiFailure.serverError()))
          : NewLessonState.data(successOrFailure.getOrElse((l) => []));
      return unit;
    }
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

  Future<Unit> submit() async {
    state = state.copyWith(submitting: true);
    final okOrError = await knowledge_service.createLesson(selectedProgram, state.selectedIds).run(knowledgeApi);
    state = state.copyWith(hasError: okOrError.isLeft(), submitting: false);
    return unit;
  }
}

final newLessonNotifierProvider = StateNotifierProvider.autoDispose<NewLessonNotifier, NewLessonState>(
    (ref) => NewLessonNotifier(ref.read(knowledgeApiProvider)));
