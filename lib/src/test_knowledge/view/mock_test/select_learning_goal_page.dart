import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../knowledge/data/knowledge_entities.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../app/mock_test/select_learning_goal_controller.dart';

class SelectLearningGoalPage extends StatelessWidget {
  const SelectLearningGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: context.isXsScreen()
              ? Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSizesUnit.medium24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [AppIcons.closeIcon(() => context.go(AppPaths.home.path))],
                      ),
                      AppSizesUnit.sizedBox8,
                      const LearningGoalPickerWrapper(),
                    ],
                  ),
                )
              : Container(
                  padding: const EdgeInsets.all(AppSizesUnit.large48),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(AppSizesUnit.small8),
                        ),
                        padding: const EdgeInsets.all(AppSizesUnit.medium24),
                        width: 434,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const LearningGoalPickerWrapper(),
                            AppSizesUnit.sizedBox24,
                            TextButton(
                                onPressed: () => context.go(AppPaths.home.path), child: Text(t(context).backToHome)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
        ));
  }
}

class LearningGoalPickerWrapper extends HookConsumerWidget {
  const LearningGoalPickerWrapper({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(selectLearningGoalControllerProvider);
    final controller = ref.read(selectLearningGoalControllerProvider.notifier);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t(context).selectLearningGoalTitle, style: Theme.of(context).textTheme.heading4),
          AppSizesUnit.sizedBox16,
          Text(t(context).selectLearningGoalDesc, style: Theme.of(context).textTheme.bodyMedium),
          AppSizesUnit.sizedBox16,
          Column(
            children: [
              CupertinoPickerOptions<Subject>(
                options: state.subjectsOption.getOrElse(() => []),
                onPicked: state.subjectsOption.isSome() ? some(controller.setSubjectOption) : none(),
                selectedOption: state.selectedSubjectOption,
                placeholder: t(context).selectSubject,
              ),
              AppSizesUnit.sizedBox8,
              CupertinoPickerOptions<Program>(
                options: state.programsOption.getOrElse(() => []),
                onPicked: state.selectedSubjectOption.isSome()
                    ? some((program) => controller.setProgramOption(program))
                    : none(),
                selectedOption: state.selectedProgramOption,
                placeholder: t(context).selectProgram,
              ),
              AppSizesUnit.sizedBox8,
              CupertinoPickerOptions<LearningGoal>(
                options: state.learningGoalsOption.getOrElse(() => []),
                onPicked: state.selectedProgramOption.isSome()
                    ? some((learningGoal) => controller.setLearningGoalOption(learningGoal))
                    : none(),
                selectedOption: state.selectedLearningGoalOption,
                placeholder: t(context).selectLearningGoal,
              ),
            ],
          ),
          AppSizesUnit.sizedBox16,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: state.selectedLearningGoalOption.isSome()
                  ? () {
                      final mockTestTopicPath = AppPaths.mockTestTopic.path.replaceAll(
                          ':lgId', state.selectedLearningGoalOption.getOrElse(() => LearningGoal.empty()).id);
                      controller.submitBtnPressed().then((unit) => context.go(mockTestTopicPath));
                    }
                  : null,
              child: Text(t(context).start),
            ),
          ),
        ],
      ),
    );
  }
}
