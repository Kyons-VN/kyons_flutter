import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/app/learning_path_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/view/learning_path/widgets/category_drawer.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';
import 'package:shared_package/shared_package.dart';

import 'widgets/lesson_list_widget.dart';

class LearningPathPage extends ConsumerWidget {
  const LearningPathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print('build lp');
    final controller = ref.read(learningPathNotifierProvider.notifier);
    // final currentUserState = ref.read(currentUserProvider);
    // final studyType = currentUserState.userOption.getOrElse(() => User.empty()).studyType;
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    final state = ref.watch(learningPathNotifierProvider);
    // if (learningPathState.learningPath.isNone()) learningPathNotifier.init();
    // });

    ref.listen<LearningPathState>(learningPathNotifierProvider, (pre, next) {
      if (next.isMissing) {
        context.go(AppPaths.home.path);
      }
    });

    return Scaffold(
      appBar: const MainAppBar(backPath: AppPaths.home),
      drawer: const CategoryDrawer(),
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: HookConsumer(
          builder: (context, ref, child) {
            final learningPathState = ref.watch(learningPathNotifierProvider);
            if (learningPathState.loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (learningPathState.hasError.isSome()) {
              return Center(
                child: Text(learningPathState.hasError.getOrElse(() => const ApiFailure.clientError()).toString()),
              );
            }
            final learningGoalPath = learningPathState.learningGoalPathOption.getOrElse(() => LearningGoalPath.empty());
            if (learningGoalPath.lessonCategories.isNotEmpty) {
              // return LessonItemsListWidget(
              //   lessons: categories
              //       .map((learningGoalPath) => learningGoalPath.lessons)
              //       .fold([], (previousValue, element) => previousValue + element),
              //   studyType: studyType,
              // );
              return LessonListWidget(
                learningGoalPath: learningGoalPath,
                selectedCatIndex: state.selectedCat,
                nextCatCallback: () => controller.setSelectedCatIndex(state.selectedCat + 1),
              );
            } else {
              return const Center(
                child: Text('No data'),
              );
            }
            // } else {
            //   return Column(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(AppSizesUnit.large48),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Heading(4, t(context).finish_test),
            //             AppSizesUnit.sizedBox16,
            //             Heading(6, t(context).learning_path_is_reparing, color: AppColors.secondaryBlue),
            //             AppSizesUnit.sizedBox24,
            //           ],
            //         ),
            //       ),
            //       AppAssets.waitingSVG,
            //     ],
            //   );
            // }
          },
        ),
      ),
    );
  }
}
