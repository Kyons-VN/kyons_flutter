import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_package/shared_package.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../boostrap/config_reader.dart';
import '../../../core/helper/translate.dart';
import '../../../knowledge/data/knowledge_entities.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../../test_knowledge/app/mock_test/diagnostic_test_controller.dart';
import '../../../test_knowledge/data/test_knowledge.dart';
import '../widgets/test_content_widget.dart';
import '../widgets/test_result_widget.dart';

class TestPage extends StatelessWidget {
  final bool isTest;
  final String lgId;
  const TestPage({Key? key, this.isTest = false, required this.lgId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSizesUnit.medium24),
            child: HookConsumer(
              builder: (context, ref, child) {
                final controller = ref.read(diagnosticTestControllerProvider(lgId).notifier);
                final state = ref.watch(diagnosticTestControllerProvider(lgId));
                final testLength = state.content.getOrElse(() => TestContent.empty()).questions.length;
                if (testLength == 0) {
                  return Container();
                }
                if (state.loading || state.isSubmitted) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.testResult.isNone()) {
                  final answersResult = state.answersResult.getOrElse(() => {});
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppIcons.closeIcon(() {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (_) {
                                return AppDialog(
                                  title: Heading(6, t(context).doYouWantToStop),
                                  body: Text(t(context).youWillHaveTo),
                                  actions: [
                                    ElevatedButton(onPressed: context.pop, child: Text(t(context).continueText)),
                                    OutlinedButton(
                                        onPressed: () => context.go(AppPaths.home.path), child: Text(t(context).stop)),
                                  ],
                                );
                              },
                            );
                          })
                        ],
                      ),
                      AppSizesUnit.sizedBox8,
                      Heading(5, t(context).mockTest),
                      AppSizesUnit.sizedBox8,
                      if (controller.learningGoal.isSome())
                        Heading(8,
                            '${t(context).target}: ${controller.learningGoal.getOrElse(() => LearningGoal.empty()).name}'),
                      AppSizesUnit.sizedBox16,
                      Row(
                        children: [
                          Expanded(
                              child: AppProgressIndicator(
                                  value: (state.currentQuestionIndex.getOrElse(() => 0) + 1) / testLength)),
                          AppSizesUnit.sizedBox8,
                          Text('${state.currentQuestionIndex.getOrElse(() => 0) + 1}/$testLength'),
                        ],
                      ),
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
                  final testResult = state.testResult.getOrElse(() => TestResult.empty());
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading(4, t(context).mockTestPoint),
                        AppSizesUnit.sizedBox24,
                        TestResultWidget(
                          testResult: testResult,
                          lessonGroup: state.lessonGroup.getOrElse(() => LessonGroup.empty()),
                          testContent: state.content.getOrElse(() => TestContent.empty()),
                          learningGoal: controller.learningGoal.getOrElse(() => LearningGoal.empty()),
                        ),
                        AppSizesUnit.sizedBox8,
                        Container(
                          padding: const EdgeInsets.all(AppSizesUnit.medium16),
                          decoration: BoxDecoration(
                              color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(t(context).thisIsTheMockTestResult),
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
                        AppSizesUnit.sizedBox24,
                        Container(
                          padding: const EdgeInsets.all(AppSizesUnit.medium16),
                          decoration: BoxDecoration(
                              color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading(8, t(context).challengeYourFriends),
                                    AppSizesUnit.sizedBox8,
                                    Text(t(context).giftFromKyons),
                                  ],
                                ),
                              ),
                              AppSizesUnit.sizedBox24,
                              AppIcons.iconButton(
                                  AppIcons.arrowRight,
                                  () => showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      barrierColor: AppColors.white,
                                      builder: (_) {
                                        return Container(
                                          color: AppColors.white,
                                          padding: const EdgeInsets.all(AppSizesUnit.medium24),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    AppIcons.iconButton(
                                                      AppIcons.close,
                                                      () => context.pop(),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [AppAssets.inviteSVG]),
                                                AppSizesUnit.sizedBox8,
                                                Heading(4, t(context).shareMockTest),
                                                AppHtml(data: t(context).testFormat),
                                                AppSizesUnit.sizedBox8,
                                                Row(
                                                  children: [
                                                    Flexible(
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(AppSizesUnit.small5),
                                                          border: Border.all(color: AppColors.blueGray300),
                                                        ),
                                                        padding: const EdgeInsets.all(AppSizesUnit.small8),
                                                        child: Text(
                                                          '${ConfigReader.clientApi()}/share-mocktest/${testResult.referral}',
                                                          overflow: TextOverflow.ellipsis,
                                                          style: const TextStyle(color: AppColors.blueGray400),
                                                        ),
                                                      ),
                                                    ),
                                                    AppSizesUnit.sizedBox8,
                                                    AppIcons.iconButton(AppIcons.duplicate, () {
                                                      if (kIsWeb) {
                                                        // Copy to clipboard
                                                        Clipboard.setData(ClipboardData(
                                                            text:
                                                                '${ConfigReader.clientApi()}/share-mocktest/${testResult.referral}'));
                                                        Flushbar().success(t(context).copiedToClipboard).show(context);
                                                      }
                                                      Share.share(
                                                          '${ConfigReader.clientApi()}/share-mocktest/${testResult.referral}');
                                                    }),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      })),
                            ],
                          ),
                        ),
                        AppSizesUnit.sizedBox8,
                        Container(
                          padding: const EdgeInsets.all(AppSizesUnit.medium16),
                          decoration: BoxDecoration(
                              color: AppColors.white, borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
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
                                () => context.go(AppPaths.mockTestLearningGoal.path),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Text('Error loading');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
