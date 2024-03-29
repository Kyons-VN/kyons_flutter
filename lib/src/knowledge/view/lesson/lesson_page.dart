import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/app/lesson_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/view/lesson/lesson_app_bar.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';
import 'package:kyons_flutter/src/test_knowledge/app/lesson_exercise_provider.dart';
import 'package:kyons_flutter/src/test_knowledge/app/lesson_test_provider.dart';
import 'package:kyons_flutter/src/test_knowledge/data/test_knowledge.dart';
import 'package:kyons_flutter/src/test_knowledge/view/test_content_widget.dart';
import 'package:kyons_flutter/src/test_knowledge/view/test_result_widget.dart';
import 'package:kyons_flutter/src/tutor/view/call_tutor.dart';
import 'package:shared_package/shared_package.dart';

class LessonPage extends HookConsumerWidget {
  final String id;
  const LessonPage(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lessonNotifier = ref.read(lessonNotifierProvider.notifier);
    final lessonStudyNotifier = ref.read(lessonStudyNotifierProvider.notifier);
    final lessonState = ref.read(lessonNotifierProvider);
    final isMenuOpened = useState<bool>(false);
    final exerciseNotifier = ref.read(exerciseNotifierProvider.notifier);
    final testNotifier = ref.read(testNotifierProvider.notifier);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!lessonState.hasError && lessonState.lessonGroup.isNone() && !lessonState.loading) lessonNotifier.init(id);
    });
    ref.listen<LessonState>(lessonNotifierProvider, (previous, next) {
      if (next.lessonGroup.isSome()) {
        lessonStudyNotifier.init(next.lessonGroup.getOrElse(() => LessonGroup.empty()));
        exerciseNotifier.getExercise(id);
        testNotifier.getTest(id);
      }
    });

    if (lessonState.loading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      if (lessonState.hasError) {
        return const Text('error');
      }
    }

    void menuCallback() {
      isMenuOpened.value = false;
    }

    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            appBar: LessonAppBar(openCallback: () {
              isMenuOpened.value = true;
            }),
            endDrawer: const AppDrawer(),
            body: SizedBox.expand(
              child: Padding(
                  padding: const EdgeInsets.all(AppSizesUnit.medium24),
                  child: HookConsumer(
                    builder: (context, ref, child) {
                      final lessonStudyState = ref.watch(lessonStudyNotifierProvider);
                      final exerciseState = ref.watch(exerciseNotifierProvider);
                      final testState = ref.watch(testNotifierProvider);
                      if (lessonStudyState.selectedLessonIndex == -1) {
                        return Container();
                      }
                      if (exerciseState.isSubmitted || testState.isSubmitted) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (exerciseState.testResult.isNone() &&
                          exerciseState.content.isSome() &&
                          lessonStudyState.selectedTabIndex == TabMenu.exercise) {
                        final answersResult = exerciseState.answersResult.getOrElse(() => {});
                        return TestContentWidget(
                          title: t(context).exercise,
                          testContent: exerciseState.content.getOrElse(() => TestContent.empty()),
                          currentQuestionIndex: exerciseState.currentQuestionIndex.getOrElse(() => 0),
                          previousCallback: exerciseNotifier.previous,
                          nextCallback: exerciseNotifier.next,
                          answersResult: answersResult,
                          answerSelectedCallback: exerciseNotifier.selectedAnswer,
                          submitCallback: () {
                            exerciseNotifier.submit(answersResult);
                          },
                        );
                      }

                      if (testState.testResult.isNone() &&
                          testState.content.isSome() &&
                          lessonStudyState.selectedTabIndex == TabMenu.test) {
                        final answersResult = testState.answersResult.getOrElse(() => {});
                        return TestContentWidget(
                          title: t(context).test,
                          testContent: testState.content.getOrElse(() => TestContent.empty()),
                          currentQuestionIndex: testState.currentQuestionIndex.getOrElse(() => 0),
                          previousCallback: testNotifier.previous,
                          nextCallback: testNotifier.next,
                          answersResult: answersResult,
                          answerSelectedCallback: testNotifier.selectedAnswer,
                          submitCallback: () {
                            testNotifier.submit(answersResult);
                          },
                        );
                      }

                      if (exerciseState.testResult.isSome() && lessonStudyState.selectedTabIndex == TabMenu.exercise) {
                        return TestResultWidget(
                          testResult: exerciseState.testResult.getOrElse(() => TestResult.empty()),
                          lessonGroup: lessonState.lessonGroup.getOrElse(() => LessonGroup.empty()),
                          actions: [
                            ElevatedButton(
                                    onPressed: () {
                                      lessonStudyNotifier.selectTabIndex(TabMenu.test);
                                      isMenuOpened.value = false;
                                    },
                                    child: Text(t(context).do_test))
                                .medium(context),
                            AppSizesUnit.sizedBox8,
                            OutlinedButton(
                                    onPressed: () {
                                      exerciseNotifier
                                        ..initialize()
                                        ..getExercise(id);
                                      isMenuOpened.value = false;
                                    },
                                    child: Text(t(context).redo_exercise))
                                .medium(context),
                          ],
                          testContent: exerciseState.content.getOrElse(() => TestContent.empty()),
                        );
                      }
                      if (testState.testResult.isSome() && lessonStudyState.selectedTabIndex == TabMenu.test) {
                        return TestResultWidget(
                          testResult: testState.testResult.getOrElse(() => TestResult.empty()),
                          lessonGroup: lessonState.lessonGroup.getOrElse(() => LessonGroup.empty()),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                isMenuOpened.value = false;
                                context.go(AppPaths.learningPath.path);
                              },
                              child: Text(t(context).to_learning_path),
                            ).medium(context),
                          ],
                          testContent: testState.content.getOrElse(() => TestContent.empty()),
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Heading(8, t(context).lesson),
                              Heading(8,
                                  '${lessonStudyState.selectedLessonIndex + 1}/${lessonStudyNotifier.idsList.length}'),
                            ],
                          ),
                          AppSizesUnit.sizedBox8,
                          AppProgressIndicator(
                              value: (lessonStudyState.selectedLessonIndex + 1) / lessonStudyNotifier.idsList.length),
                          AppSizesUnit.sizedBox24,
                          Expanded(
                            child: LessonContentWidget(
                              lessonStudyNotifier.getSelectedLesson(lessonStudyState.selectedLessonIndex),
                            ),
                          ),
                          AppSizesUnit.sizedBox24,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: lessonStudyState.selectedLessonIndex == 0
                                    ? null
                                    : () {
                                        lessonStudyNotifier.pre();
                                      },
                                child: const Icon(AppIcons.arrowLeft),
                              ),
                              // AppSizesUnit.sizedBox24,
                              // ElevatedButton(onPressed: () {}, child: const Icon(AppIcons.bookmark)),
                              AppSizesUnit.sizedBox24,
                              ElevatedButton(
                                onPressed: () {
                                  showCallTutor(context);
                                },
                                child: const Icon(AppIcons.tutor),
                              ),
                              AppSizesUnit.sizedBox24,
                              if (lessonStudyState.selectedLessonIndex < lessonStudyNotifier.idsList.length - 1)
                                OutlinedButton(
                                  onPressed:
                                      lessonStudyState.selectedLessonIndex == lessonStudyNotifier.idsList.length - 1
                                          ? null
                                          : () {
                                              lessonStudyNotifier.next();
                                            },
                                  child: const Icon(AppIcons.arrowRight),
                                ),
                              if (lessonStudyState.selectedLessonIndex == lessonStudyNotifier.idsList.length - 1)
                                ElevatedButton(
                                  onPressed: () {
                                    lessonStudyNotifier.selectTabIndex(TabMenu.exercise);
                                  },
                                  child: const Icon(AppIcons.arrowRight),
                                ),
                            ],
                          ),
                        ],
                      );
                    },
                  )),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: isMenuOpened.value ? 0 : -MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Scaffold(
              backgroundColor: AppColors.primaryBlue,
              body: SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                            child: IconButton(
                                onPressed: () {
                                  isMenuOpened.value = false;
                                },
                                icon: AppIcons.square48(AppIcons.close, color: AppColors.blueGray400)))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSizesUnit.medium24),
                      child: LessonMenu(lessonState.lessonGroup.getOrElse(() => LessonGroup.empty()), menuCallback),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LessonContentWidget extends StatelessWidget {
  final Lesson lesson;
  const LessonContentWidget(this.lesson, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 240,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium16),
          decoration: const BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(AppSizesUnit.medium16))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(7, lesson.category.name),
              AppHtml(data: lesson.content),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonMenu extends HookConsumerWidget {
  final Function onClose;
  final LessonGroup lessonGroup;
  const LessonMenu(this.lessonGroup, this.onClose, {Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final lessonStudyNotifier = ref.read(lessonStudyNotifierProvider.notifier);
    final lessonStudyState = ref.read(lessonStudyNotifierProvider);
    final lessonState = ref.read(lessonNotifierProvider);
    final isLessonOpen = useState<bool>(lessonStudyState.selectedTabIndex == TabMenu.study);
    final isExerciseOpen = useState<bool>(lessonStudyState.selectedTabIndex == TabMenu.exercise);
    final isTestOpen = useState<bool>(lessonStudyState.selectedTabIndex == TabMenu.test);
    ref.listen<LessonStudyState>(lessonStudyNotifierProvider, (pre, next) {
      if (pre!.selectedTabIndex != next.selectedTabIndex) {
        isLessonOpen.value = next.selectedTabIndex == TabMenu.study;
        isExerciseOpen.value = next.selectedTabIndex == TabMenu.exercise;
        isTestOpen.value = next.selectedTabIndex == TabMenu.test;
      }
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () {
            lessonStudyNotifier.selectTabIndex(TabMenu.study);
            onClose();
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Heading(5, t(context).lesson, color: AppColors.white),
                GestureDetector(
                  onTap: () {
                    isLessonOpen.value = !isLessonOpen.value;
                  },
                  child: Icon(
                    isLessonOpen.value ? AppIcons.arrowUp : AppIcons.arrowDown,
                    color: AppColors.orange,
                  ),
                )
              ],
            ),
          ),
        ),
        if (isLessonOpen.value)
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSizesUnit.sizedBox16,
                for (final lessonInfo in lessonState.lessonGroup.getOrElse(() => LessonGroup.empty()).lessonInfos)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading(
                        6,
                        '${lessonInfo.category.name} - ${lessonInfo.topic.name}',
                        color: AppColors.white,
                      ),
                      AppSizesUnit.sizedBox16,
                      for (final lesson in lessonInfo.lessons) ...[
                        GestureDetector(
                          onTap: () {
                            lessonStudyNotifier.selectTabIndex(TabMenu.study);
                            lessonStudyNotifier.select(lesson);
                            onClose();
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Heading(
                              8,
                              '${lesson.name} - ${t(context).level} ${lesson.difficultyLevel}',
                              color: lesson.id == lessonStudyState.selectedLessonId
                                  ? AppColors.lightBlue1
                                  : AppColors.white,
                            ),
                          ),
                        ),
                        AppSizesUnit.sizedBox16,
                      ]
                    ],
                  ),
              ],
            ),
          ),
        const Divider(indent: 0, height: 32, endIndent: 0),
        GestureDetector(
          onTap: () {
            lessonStudyNotifier.selectTabIndex(TabMenu.exercise);
            onClose();
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Heading(5, t(context).exercise, color: AppColors.white),
          ),
        ),
        const Divider(indent: 0, height: 32, endIndent: 0),
        GestureDetector(
          onTap: () {
            lessonStudyNotifier.selectTabIndex(TabMenu.test);
            onClose();
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Heading(5, t(context).test, color: AppColors.white),
          ),
        ),
      ],
    );
  }
}

class LessonMenuItem extends StatelessWidget {
  final Lesson lesson;
  const LessonMenuItem(this.lesson, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text('${lesson.category.name} - ${lesson.topic.name}')],
    );
  }
}
