import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/core/app/knowledge_provider.dart';
import 'package:kyons_flutter/src/core/data/knowledge.dart';
import 'package:kyons_flutter/src/core/data/knowledge_service.dart' as knowledge_service;
import 'package:kyons_flutter/src/core/domain/i_knowledge.dart';

part 'home_provider.freezed.dart';
part 'home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  final IKnowledge knowledgeApi;
  HomeNotifier(this.knowledgeApi) : super(HomeState.initial());

  Future<void> initial() async {
    state = state.copyWith(isSelectingSubject: true);
    final Either<ApiFailure, Iterable<Subject>> failureOrSuccess =
        await knowledge_service.getSubjects().run(knowledgeApi);
    // if(failureOrSuccessSubject.isRight()){
    //   final Either<ApiFailure, Iterable<Program>> failureOrSuccessProgram =
    //     await knowledge_service.getFrogramFromSubject().run(knowledgeApi);
    // }
    state = state.copyWith(
      isSelectingSubject: false,
      hasError: failureOrSuccess.isLeft(),
      subjectOption: optionOf(failureOrSuccess),
    );
  }
}

final homeProvider = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(ref.read(
    knowledge,
  )),
);
