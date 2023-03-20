import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:shared_package/shared_package.dart';

import '../../../app/learning_path_provider.dart';

class CategoryDrawer extends StatelessWidget {
  const CategoryDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(AppSizesUnit.medium24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppIcons.closeIcon(
                  () => context.pop(),
                )
              ],
            ),
            AppSizesUnit.sizedBox8,
            Consumer(builder: (context, ref, child) {
              final state = ref.read(learningPathNotifierProvider);
              final controller = ref.read(learningPathNotifierProvider.notifier);
              final learningGoalPath = state.learningGoalPathOption.getOrElse(() => LearningGoalPath.empty());
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Heading(
                    6,
                    state.selectedProgram.getOrElse(() => Program.empty()).name,
                    color: AppColors.white,
                  ),
                  AppSizesUnit.sizedBox16,
                  Heading(
                    8,
                    state.selectedLearningGoal.getOrElse(() => LearningGoal.empty()).name,
                    color: AppColors.white,
                  ),
                  AppSizesUnit.sizedBox8,
                  Row(
                    children: [
                      Expanded(
                        child: AppProgressIndicator(
                          value: learningGoalPath.progress,
                        ),
                      ),
                      AppSizesUnit.sizedBox16,
                      Text('${learningGoalPath.progress}%',
                          style: Theme.of(context).textTheme.heading7.copyWith(color: AppColors.white)),
                    ],
                  ),
                  ...learningGoalPath.lessonCategories.mapWithIndex((categoryInfo, index) {
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          controller.setSelectedCatIndex(index);
                          context.pop();
                        },
                        child: SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  categoryInfo.category.name,
                                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                        color: state.selectedCat == index ? AppColors.lightBlue1 : AppColors.white,
                                      ),
                                ),
                              ),
                              // Text(categoryInfo.),
                              const Icon(AppIcons.arrowRight, color: AppColors.orange),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
