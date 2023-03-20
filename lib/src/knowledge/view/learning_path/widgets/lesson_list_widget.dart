import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_package/shared_package.dart';

import '../../../../core/helper/translate.dart';
import '../../../../navigation/domain/app_paths.dart';
import '../../../data/knowledge_entities.dart';
import 'lesson_item_widget.dart';

class LessonListWidget extends HookWidget {
  final int selectedCatIndex;
  final LearningGoalPath learningGoalPath;
  final Function nextCatCallback;
  const LessonListWidget(
      {required this.learningGoalPath, required this.selectedCatIndex, Key? key, required this.nextCatCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final catIndex = useState(0);
    final categories = learningGoalPath.lessonCategories;
    final selectedCat = categories[selectedCatIndex];
    final scrollController = useScrollController(keepScrollOffset: true);
    return Padding(
      padding: const EdgeInsets.all(AppSizesUnit.medium24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.separated(
              controller: scrollController,
              // padding: const EdgeInsets.all(),
              itemBuilder: (context, index) => LesssonItemWidget(
                image: AppAssets.exerciseSVG,
                body: selectedCat.lessons[index].name,
                onClick: () => context.go(AppPaths.lessonPage.path.replaceFirst(':id', selectedCat.lessons[index].id)),
              ),
              separatorBuilder: (_, __) => AppSizesUnit.sizedBox8,
              itemCount: selectedCat.lessons.length,
            ),
          ),
          if (selectedCat.isCompleted && learningGoalPath.progress != 100)
            LesssonItemWidget(
              image: AppAssets.roadBoardSVG,
              body: t(context).changeDirection,
              color: AppColors.orange,
              showArrow: true,
              onClick: () => showDialog(
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
                          ElevatedButton(
                              onPressed: () {
                                nextCatCallback();
                                context.pop();
                              },
                              child: Text(t(context).toSt(categories[selectedCatIndex + 1].category.name))),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          if (learningGoalPath.progress == 100)
            LesssonItemWidget(
              image: AppAssets.endPathSVG,
              body: t(context).toDestination,
              color: AppColors.orange,
            ),
          AppSizesUnit.sizedBox24,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () =>
                    scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve: Curves.easeIn),
                child: const Icon(AppIcons.arrowUpStop),
              ).largeIcon(context),
              AppSizesUnit.sizedBox8,
              ElevatedButton(onPressed: () => Scaffold.of(context).openDrawer(), child: const Icon(AppIcons.map))
                  .largeIcon(context),
            ],
          )
        ],
      ),
    );
  }
}
