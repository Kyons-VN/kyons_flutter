import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../../../navigation/domain/app_paths.dart';
import '../../../../test_knowledge/app/lesson_exercise_provider.dart';

class LessonExerciseWidget extends ConsumerWidget {
  final String lessonGroupId;
  const LessonExerciseWidget(this.lessonGroupId, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exerciseState = ref.watch(exerciseNotifierProvider(lessonGroupId));
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppIcons.closeIcon(
              () => context.go(AppPaths.home.path),
            ),
          ],
        ),
      ],
    );
  }
}
