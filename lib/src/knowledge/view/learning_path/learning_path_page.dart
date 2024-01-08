import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/knowledge/app/learning_path_provider.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/view/assets/student_assets.dart';

class LearningPathPage extends StatelessWidget {
  const LearningPathPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: context.isXsScreen()
              ? SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: StudentAssets.learningPathXs,
                        fit: BoxFit.fitWidth,
                        repeat: ImageRepeat.repeatY,
                      ),
                      // background: var(--gradient-2, linear-gradient(11deg, #10182B 0%, #315D93 100%));
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff315D93), Color(0xff10182B)],
                        stops: [0, 0.4],
                      ),
                    ),
                    child: const LearningPathWidget(),
                  ),
                )
              : Container()),
    );
  }
}

class LearningPathWidget extends ConsumerStatefulWidget {
  const LearningPathWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LearningPathWidgetState();
}

class _LearningPathWidgetState extends ConsumerState<LearningPathWidget> {
  @override
  void initState() {
    super.initState();
    ref.read(learningPathNotifierProvider.notifier).init();
  }

  @override
  Widget build(BuildContext context) {
    return HookConsumer(builder: (context, ref, child) {
      final tabIndex = useState(0);
      final state = ref.watch(learningPathNotifierProvider);
      final learningGoal = state.selectedLearningGoal.getOrElse(() => StudentLearningGoal.empty());
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizesUnit.medium16, vertical: AppSizesUnit.medium24),
            child: Container(
              padding: const EdgeInsets.all(AppSizesUnit.medium16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizesUnit.medium16),
                color: AppColors.white,
              ),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: TabButtonWidget(
                        text: 'Lộ trình học',
                        isSelected: tabIndex.value == 0,
                        onTap: () => tabIndex.value = 0,
                      ),
                    ),
                    AppSizesUnit.sizedBox6,
                    Expanded(
                      child: TabButtonWidget(
                        text: 'Chi tiết tiến độ',
                        isSelected: tabIndex.value == 1,
                        onTap: () => tabIndex.value = 1,
                      ),
                    ),
                  ],
                ),
                AppSizesUnit.sizedBox16,
                const Text('Đây là lộ trình học tập để bạn đạt mục tiêu:'),
                AppSizesUnit.sizedBox16,
                StudentAssets.mathImage,
                AppSizesUnit.sizedBox8,
                Heading(6, learningGoal.name),
                Heading(8, learningGoal.programName)
              ]),
            ),
          ),
        ],
      );
    });
  }
}

class LessonsWidget extends StatelessWidget {
  final LearningGoalPath learningPath;
  const LessonsWidget({super.key, required this.learningPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: learningPath.lessonCategories[0].lessons.map((e) => LessonWidget(lesson: e)).toList(),
    );
  }
}

class LessonWidget extends StatelessWidget {
  final LessonItem lesson;
  const LessonWidget({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: context.isXsScreen() ? 200 : 130,
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizesUnit.medium16),
          ),
          child: Stack(children: [
            Positioned(
              child: Image.asset(
                'AppAssets.',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizesUnit.medium16),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff315D93), Color(0xff10182B)],
                    stops: [0, 0.4],
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(AppSizesUnit.medium16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lesson.name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    AppSizesUnit.sizedBox8,
                    Text(
                      'lesson.description',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}

class TabButtonWidget extends HookWidget {
  final String text;
  final bool isSelected;
  final void Function() onTap;
  const TabButtonWidget({required this.onTap, super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);
    return FocusableActionDetector(
      onShowHoverHighlight: (value) => isHovered.value = value,
      mouseCursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: AppSizesUnit.large40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizesUnit.medium12),
            color: isSelected
                ? AppColors.lightBlue5
                : isHovered.value
                    ? AppColors.lightBlue6.withOpacity(0.5)
                    : AppColors.white,
          ),
          child: Center(
              child: Text(text,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: isSelected ? AppColors.lightBlue1 : AppColors.blueGray500,
                        fontWeight: FontWeight.bold,
                      ))),
        ),
      ),
    );
  }
}
