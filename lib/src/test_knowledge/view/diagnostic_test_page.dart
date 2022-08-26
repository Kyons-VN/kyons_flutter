import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';
import 'package:kyons_flutter/src/test_knowledge/app/diagnostic_test_provider.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/view/test_content_widget.dart';
import 'package:kyons_flutter/src/test_knowledge/view/test_result_widget.dart';

class DiagnosticTestPage extends ConsumerWidget {
  final bool isTest;
  const DiagnosticTestPage({Key? key, this.isTest = false}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diagnosticTestNotifier = ref.read(diagnosticTestNotifierProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final diagnosticTestState = ref.watch(diagnosticTestNotifierProvider);
      if (diagnosticTestState.currentQuestionIndex.isNone() &&
          !diagnosticTestState.hasError &&
          !diagnosticTestState.loading) {
        diagnosticTestNotifier.init().then((_) {
          if (isTest) {
            diagnosticTestNotifier.test();
          }
        });
      }
    });

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const MainAppBar(),
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSizesUnit.medium24),
              child: HookConsumer(
                builder: (context, ref, child) {
                  final diagnosticTestState = ref.watch(diagnosticTestNotifierProvider);
                  if (diagnosticTestState.loading || diagnosticTestState.isSubmitted) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (diagnosticTestState.testResult.isNone()) {
                    final answersResult = diagnosticTestState.answersResult.getOrElse(() => {});
                    return TestContentWidget(
                      title: t(context).diagnostic_test,
                      testContent: diagnosticTestState.content.getOrElse(() => TestContent.empty()),
                      currentQuestionIndex: diagnosticTestState.currentQuestionIndex.getOrElse(() => 0),
                      previousCallback: diagnosticTestNotifier.previous,
                      nextCallback: diagnosticTestNotifier.next,
                      answersResult: answersResult,
                      answerSelectedCallback: diagnosticTestNotifier.selectedAnswer,
                      submitCallback: () {
                        diagnosticTestNotifier.submit(answersResult);
                      },
                    );
                  } else if (diagnosticTestState.testResult.isSome()) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading(4, t(context).finish_test),
                        AppSizesUnit.sizedBox16,
                        Heading(6, t(context).learning_path_is_reparing, color: AppColors.secondaryBlue),
                        AppSizesUnit.sizedBox16,
                        TestResultWidget(
                          testResult: diagnosticTestState.testResult.getOrElse(() => TestResult.empty()),
                          lessonGroup: diagnosticTestState.lessonGroup.getOrElse(() => LessonGroup.empty()),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                context.go(AppPaths.learningPath.path);
                              },
                              child: Text(t(context).to_learning_path),
                            ).medium(context),
                          ],
                          testContent: diagnosticTestState.content.getOrElse(() => TestContent.empty()),
                        ),
                      ],
                    );
                  } else {
                    return const Text('Error loading');
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
