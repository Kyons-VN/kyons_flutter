import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../boostrap/config_reader.dart';
import '../../../../core/helper/translate.dart';
import '../../../../navigation/domain/app_paths.dart';
import '../../../../test_knowledge/app/lesson_test_provider.dart';
import '../../../../test_knowledge/data/test_knowledge.dart';
import '../../../../test_knowledge/view/widgets/test_content_widget.dart';
import '../../../../test_knowledge/view/widgets/test_result_widget.dart';
import '../../../data/knowledge_entities.dart';

class LessonExamWidget extends ConsumerWidget {
  final LessonGroup lessonGroup;
  final Function onLessonBtnClick;
  const LessonExamWidget(this.lessonGroup, {super.key, required this.onLessonBtnClick});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(testNotifierProvider(lessonGroup.id).notifier).getTest;
    final state = ref.watch(testNotifierProvider(lessonGroup.id));
    final controller = ref.read(testNotifierProvider(lessonGroup.id).notifier);
    final testLength = state.content.getOrElse(() => TestContent.empty()).questions.length;
    final answersResult = state.answersResult.getOrElse(() => {});
    if (state.loading || state.isSubmitted) {
      return const Center(child: CircularProgressIndicator());
    } else if (state.testResult.isNone()) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppIcons.closeIcon(
                () => context.go(AppPaths.learningPath.path),
              ),
            ],
          ),
          AppSizesUnit.sizedBox24,
          Row(
            children: [
              Expanded(
                  child: AppProgressIndicator(value: (state.currentQuestionIndex.getOrElse(() => 0) + 1) / testLength)),
              AppSizesUnit.sizedBox8,
              Text('${state.currentQuestionIndex.getOrElse(() => 0) + 1}/$testLength'),
              AppSizesUnit.sizedBox16,
              OutlinedButton(onPressed: () => onLessonBtnClick(), child: const Icon(AppIcons.lessonContent))
                  .mediumIcon(context)
            ],
          ),
          AppSizesUnit.sizedBox8,
          TestContentWidget(
            title: t(context).diagnosticTest,
            testContent: state.content.getOrElse(() => TestContent.empty()),
            currentQuestionIndex: state.currentQuestionIndex.getOrElse(() => 0),
            previousCallback: controller.previous,
            nextCallback: controller.next,
            answersResult: answersResult,
            answerSelectedCallback: controller.selectedAnswer,
            submitCallback: () {
              controller.submit(answersResult);
            },
            reportCallback: () => launchUrl(
              Uri.parse(ConfigReader.getReportUrl()),
              webOnlyWindowName: '_blank',
            ),
          ),
        ],
      );
    } else if (state.testResult.isSome()) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heading(4, t(context).mockTestPoint),
          AppSizesUnit.sizedBox24,
          TestResultWidget(
            testResult: state.testResult.getOrElse(() => TestResult.empty()),
            lessonGroup: lessonGroup,
            actions: [
              ElevatedButton(
                onPressed: () {
                  context.go(AppPaths.learningPath.path);
                },
                child: Text(t(context).continueDoingExercise),
              ).medium(context),
            ],
            testContent: state.content.getOrElse(() => TestContent.empty()),
            learningGoal: controller.learningGoal.getOrElse(() => LearningGoal.empty()),
          ),
          AppSizesUnit.sizedBox8,
          Container(
            padding: const EdgeInsets.all(AppSizesUnit.medium16),
            decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(t(context).thisIsTestResult),
                AppSizesUnit.sizedBox24,
                ElevatedButton(
                  onPressed: () {
                    context.go(AppPaths.learningPath.path);
                  },
                  child: Text(t(context).continueDoingExercise),
                ).medium(context),
              ],
            ),
          ),
          AppSizesUnit.sizedBox8,
          Container(
            padding: const EdgeInsets.all(AppSizesUnit.medium16),
            decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading(8, t(context).easyMockTest),
                      AppSizesUnit.sizedBox8,
                      Text(t(context).reselectTarget),
                    ],
                  ),
                ),
                AppSizesUnit.sizedBox24,
                AppIcons.iconButton(
                  AppIcons.arrowRight,
                  () => showDialog(
                      context: context,
                      builder: (context) => AppDialog(
                            title: Heading(6, t(context).youWillUse),
                            body: AppHtml(data: t(context).toCreateLearningGoal),
                            actions: [
                              ElevatedButton(
                                  onPressed: () => context.go(AppPaths.mockTestLearningGoal.path),
                                  child: Text(t(context).changeTarget)),
                              OutlinedButton(onPressed: () => context.pop(), child: Text(t(context).notChangeTarget)),
                            ],
                          )),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return const Text('Error loading');
    }
  }
}
