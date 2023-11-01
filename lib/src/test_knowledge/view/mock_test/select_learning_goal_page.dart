import 'package:another_flushbar/flushbar.dart';
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
                        width: MediaQuery.of(context).size.width < 434
                            ? MediaQuery.of(context).size.width - AppSizesUnit.large32
                            : 434,
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
    ref.listen<SelectLearningGoalState>(selectLearningGoalControllerProvider, (previous, next) {
      if (next.hasError) {
        Flushbar().error(t(context).error);
      }
      if (next.isCompleted) {
        final mockTestTopicPath = AppPaths.mockTestTopic.path
            .replaceAll(':lgId', state.selectedLearningGoalOption.getOrElse(() => LearningGoal.empty()).id);
        context.go(mockTestTopicPath);
      }
    });
    if (state.hasError) {
      return Container(
        padding: const EdgeInsets.all(AppSizesUnit.medium16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizesUnit.small8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Heading(7, t(context).ranOutMockTest),
            AppSizesUnit.sizedBox8,
            Text(t(context).ranOutMockTestDesc),
            AppSizesUnit.sizedBox16,
            ElevatedButton(onPressed: () {}, child: Text(t(context).buyPackage)),
            AppSizesUnit.sizedBox8,
            OutlinedButton(
              onPressed: () => context.go(AppPaths.learningPath.path),
              child: Text(t(context).notChangeTarget),
            ),
          ],
        ),
      );
    }
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
              Dropdown<Subject>(
                items: state.subjectsOption.getOrElse(() => []),
                onChanged: (value) => controller.setSubjectOption(optionOf(value)),
                value: state.selectedSubjectOption,
                placeholder: t(context).selectSubject,
                itemWidget: (subject) => Text(subject.name),
                // status: DropdownStatus.enable,
              ),
              AppSizesUnit.sizedBox8,
              Dropdown<Program>(
                items: state.programsOption.getOrElse(() => []),
                onChanged: state.selectedSubjectOption.isSome()
                    ? (value) => controller.setProgramOption(optionOf(value))
                    : null,
                value: state.selectedProgramOption,
                placeholder: t(context).selectProgram,
                itemWidget: (subject) => Text(subject.name),
                // status: state.selectedSubjectOption.isSome() ? DropdownStatus.enable : DropdownStatus.disabled,
              ),
              AppSizesUnit.sizedBox8,
              Dropdown<LearningGoal>(
                items: state.learningGoalsOption.getOrElse(() => []),
                onChanged: state.selectedProgramOption.isSome()
                    ? (learningGoal) => controller.setLearningGoalOption(optionOf(learningGoal))
                    : null,
                value: state.selectedLearningGoalOption,
                placeholder: t(context).selectLearningGoal,
                itemWidget: (subject) => Text(subject.name),
                // status: state.selectedProgramOption.isSome() ? DropdownStatus.enable : DropdownStatus.disabled,
              ),
            ],
          ),
          AppSizesUnit.sizedBox16,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: state.selectedLearningGoalOption.isSome()
                  ? () {
                      // final mockTestTopicPath = AppPaths.mockTestTopic.path.replaceAll(
                      //     ':lgId', state.selectedLearningGoalOption.getOrElse(() => LearningGoal.empty()).id);
                      controller.submitBtnPressed();
                      // .then((unit) => context.go(mockTestTopicPath));
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

// class SubjectOption extends Subject with HasName {
//   late Key key;
//   SubjectOption({
//     required String id,
//     required String name,
//     required List<Program> programs,
//   }) : super(id: id, name: name, programs: programs) {
//     key = ValueKey(id);
//   }

//   factory SubjectOption.from(Subject subject) =>
//       SubjectOption(id: subject.id, name: subject.name, programs: subject.programs);
//   Subject toSubject() => Subject(id: id, name: name, programs: programs);
// }
