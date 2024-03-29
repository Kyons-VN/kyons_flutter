import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/current_user_provider.dart';
import 'package:kyons_flutter/src/authentication/domain/api_failures.dart';
import 'package:kyons_flutter/src/authentication/domain/user.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/app/learning_path_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/view/learning_path/lesson_item_list_widget.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';
import 'package:shared_package/shared_package.dart';

class LearningPathPage extends ConsumerWidget {
  const LearningPathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('build lp');
    final learningPathNotifier = ref.read(learningPathNotifierProvider.notifier);
    final currentUserState = ref.read(currentUserProvider);
    final studyType = currentUserState.userOption.getOrElse(() => User.empty()).studyType;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final learningPathState = ref.read(learningPathNotifierProvider);
      if (learningPathState.learningPath.isNone()) learningPathNotifier.init();
    });

    ref.listen<LearningPathState>(learningPathNotifierProvider, (pre, next) {
      if (next.missingProgram) context.go(AppPaths.home.path);
    });

    return Scaffold(
      appBar: const MainAppBar(backPath: AppPaths.home),
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              AppSizesUnit.sizedBox24,
              Heading(4, t(context).english),
              AppSizesUnit.sizedBox24,
              Expanded(
                flex: 1,
                child: HookConsumer(builder: (context, ref, child) {
                  final learningPathState = ref.watch(learningPathNotifierProvider);
                  if (learningPathState.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (learningPathState.error.isSome()) {
                    return Center(
                      child: Text(learningPathState.error.getOrElse(() => const ApiFailure.clientError()).toString()),
                    );
                  }
                  // final lessons = learningPathState.learningPath.getOrElse(() => LearningPath.empty()).lessons;
                  // if (lessons.isNotEmpty) {
                  return LessonItemsListWidget(
                    lessons: learningPathState.learningPath.getOrElse(() => LearningPath.empty()).lessons,
                    studyType: studyType,
                  );
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
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
