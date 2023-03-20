import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/view/lesson/widgets/difficulty_star_widget.dart';
import 'package:kyons_flutter/src/knowledge/view/lesson/widgets/exam_widget.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../app/lesson_provider.dart';
import '../../data/knowledge_entities.dart';
import 'lesson_drawer.dart';

class LessonPage extends ConsumerWidget {
  final String lessonGroupId;
  const LessonPage(
    this.lessonGroupId, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(lessonNotifierProvider(lessonGroupId));
    final controller = ref.read(lessonStudyNotifierProvider.notifier);
    ref.listen<LessonState>(lessonNotifierProvider(lessonGroupId), (previous, next) {
      if (previous!.lessonGroup.isNone() && next.lessonGroup.isSome()) {
        controller
          ..init(lessonGroupId)
          ..enableTracking();
      }
    });
    return Scaffold(
      drawer: LessonDrawer(state.lessonGroup.getOrElse(() => LessonGroup.empty())),
      body: SafeArea(
        child: Consumer(builder: (context, ref, child) {
          final studyState = ref.watch(lessonStudyNotifierProvider);
          final screenHeight = MediaQuery.of(context).size.height;
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.apiError.isSome()) {
            return state.apiError.getOrElse(() => const ApiFailure.serverError()).maybeWhen(
                  orElse: () => const Center(
                    child: Text('Unknown error'),
                  ),
                  serverError: () {
                    return const Center(
                      child: Text('Server error'),
                    );
                  },
                  clientError: () {
                    return const Center(
                      child: Text('Client error'),
                    );
                  },
                  subscriptionExpired: () => AppDialog(
                    title: Heading(7, t(context).subscriptionExpired),
                    body: Text(t(context).subscriptionExpiredDesc),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          // Package
                        },
                        child: Text(t(context).buyPackage),
                      ),
                      OutlinedButton(
                        onPressed: () => context.go(AppPaths.learningPath.path),
                        child: Text(t(context).closeDialog),
                      ),
                    ],
                  ),
                );
          }
          if (state.lessonGroup.getOrElse(() => LessonGroup.empty()).lessonInfos.isEmpty ||
              state.lessonGroup.getOrElse(() => LessonGroup.empty()).lessonInfos.first.lessons.isEmpty) {
            return const Center(
              child: Text('No lesson found'),
            );
          }
          final lesson = state.lessonGroup.getOrElse(() => LessonGroup.empty()).lessonInfos.first.lessons.first;
          return Stack(
            children: [
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizesUnit.medium24),
                  child: LessonExamWidget(
                    state.lessonGroup.getOrElse(() => LessonGroup.empty()),
                    onLessonBtnClick: () {
                      controller.selectTabIndex(TabMenu.study);
                    },
                  ),
                ),
              ),
              // if (studyState.selectedTabIndex == TabMenu.study)
              Positioned.fill(
                top: studyState.selectedTabIndex == TabMenu.study ? 0 : screenHeight,
                bottom: 0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(AppSizesUnit.medium24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppIcons.closeIcon(
                            () => controller.selectTabIndex(TabMenu.test),
                          ),
                        ],
                      ),
                      AppSizesUnit.sizedBox24,
                      Text(
                        state.lessonGroup
                            .getOrElse(() => LessonGroup.empty())
                            .lessonInfos[0]
                            .category
                            .name
                            .toUpperCase(),
                        style: Theme.of(context).textTheme.capBold,
                      ),
                      AppSizesUnit.sizedBox8,
                      Heading(8, lesson.name),
                      AppSizesUnit.sizedBox8,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Heading(8, state.selectedProgram.getOrElse(() => Program.empty()).name),
                          DifficultyStarWidget(lesson.difficultyLevel),
                        ],
                      ),
                      AppSizesUnit.sizedBox24,
                      Expanded(
                        child: SingleChildScrollView(
                          child: AppHtml(data: lesson.content),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
          // if (studyState.selectedTabIndex == TabMenu.study) {
          // } else {
          //   return Container();
          // }
          // final exerciseLength = exerciseState.content.getOrElse(() => TestContent.empty()).questions.length;
          // if (exerciseLength == 0) {
          //   return Container();
          // }
          // if (exerciseState.loading || exerciseState.isSubmitted) {
          //   return const Center(child: CircularProgressIndicator());
          // }
        }),
      ),
    );
  }
}
