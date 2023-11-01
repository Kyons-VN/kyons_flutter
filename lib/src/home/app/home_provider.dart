import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../knowledge/app/knowledge_provider.dart';
import '../../knowledge/data/knowledge_entities.dart';
import '../../knowledge/data/knowledge_service.dart' as knowledge_service;

part 'home_provider.freezed.dart';
part 'home_provider.g.dart';
part 'home_state.dart';

enum ProgramsDisplay { grid, carousel }

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  Future<HomeState> build() async {
    final failureOrSuccess = await knowledge_service.getStudentLearningGoals().run(ref.read(knowledgeApiProvider));
    return HomeState(
      studentLearningGoalsOption: failureOrSuccess.toOption(),
      hasError: failureOrSuccess.isLeft(),
    );
  }

  Future<Unit> selectStudentLearningGoal(StudentLearningGoal learningGoal) async {
    await knowledge_service.selectStudentLearningGoal(learningGoal).run(ref.read(knowledgeApiProvider));
    return unit;
  }
}

// final homeNotifierProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
//   (ref) => HomeNotifier(ref.read(
//     knowledgeApi,
//   )),
// );
