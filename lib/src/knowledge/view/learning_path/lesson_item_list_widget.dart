import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/knowledge/domain/i_knowledge.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

class LessonItemsListWidget extends StatelessWidget {
  final List<LessonItem> lessons;
  final StudyType studyType;
  const LessonItemsListWidget({Key? key, required this.lessons, required this.studyType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenHeight = MediaQuery.of(context).size.height;
      final availableBlocs = ((screenHeight - 300) / AppSizesUnit.lessonItemSize).floor() -
          1 * ((lessons.isEmpty || !lessons.last.isNew) ? 1 : 0);
      return Stack(
        children: [
          SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              children: [
                const Icon(AppIcons.arrowUp, color: AppColors.primaryBlue),
                CustomPaint(
                    painter: LineDashedPainter((lessons.length > availableBlocs
                            ? lessons.length
                            : availableBlocs + 1 * ((lessons.isEmpty || !lessons.last.isNew) ? 1 : 0)) *
                        AppSizesUnit.lessonItemSize)),
              ],
            ),
          ),
          Positioned(
            top: AppSizesUnit.large48,
            child: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight - AppSizesUnit.large48,
              child: SingleChildScrollView(
                child: Column(
                  verticalDirection: VerticalDirection.up,
                  children: [
                    Container(
                      height: 20,
                      color: AppColors.blueGray100,
                    ),
                    ...lessons.asMap().entries.map((entry) => LessonWidget(
                          lesson: entry.value,
                          index: entry.key + 1,
                        )),
                    if (lessons.isEmpty || !lessons.last.isNew) NewLessonWidget(studyType),
                    if (lessons.length < availableBlocs)
                      ...List.generate(availableBlocs - lessons.length, (index) => null).map(
                        (e) => Container(
                          color: AppColors.trasparent,
                          margin: const EdgeInsets.only(top: 10),
                          width: AppSizesUnit.lessonItemSize,
                          height: AppSizesUnit.lessonItemSize,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

class NewLessonWidget extends HookWidget {
  final StudyType studyType;
  const NewLessonWidget(this.studyType, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onHover = useState<bool>(false);
    return GestureDetector(
      onTap: studyType == StudyType.ai
          ? null
          : () {
              context.go(AppPaths.newLesonPage.path);
            },
      child: FocusableActionDetector(
        mouseCursor: studyType == StudyType.ai ? SystemMouseCursors.wait : SystemMouseCursors.click,
        onShowHoverHighlight: (value) => onHover.value = value,
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium24),
          margin: const EdgeInsets.only(top: 10),
          width: AppSizesUnit.lessonItemSize,
          height: AppSizesUnit.lessonItemSize,
          decoration: BoxDecoration(
            color: studyType == StudyType.ai ? AppColors.blueGray300 : AppColors.orange,
            boxShadow: onHover.value && studyType == StudyType.selfStudy
                ? const [
                    BoxShadow(
                      color: AppColors.shadow,
                      spreadRadius: 0,
                      offset: Offset(0, 15),
                      blurRadius: 15,
                      blurStyle: BlurStyle.normal,
                    ),
                  ]
                : [],
            borderRadius: BorderRadius.circular(AppSizesUnit.small8),
          ),
          child: Center(
            child: studyType == StudyType.ai
                ? Heading(
                    6,
                    t(context).lesson_is_reparing,
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        AppIcons.add,
                        color: AppColors.white,
                        size: AppSizesUnit.large36,
                      ),
                      Heading(
                        6,
                        t(context).new_lesson,
                        color: AppColors.white,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

class LessonWidget extends HookWidget {
  final LessonItem lesson;
  final int index;
  const LessonWidget({Key? key, required this.lesson, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onHover = useState<bool>(false);
    return GestureDetector(
      onTap: () {
        context.go(AppPaths.lessonPage.path.replaceFirst(':id', lesson.id));
      },
      child: FocusableActionDetector(
        mouseCursor: SystemMouseCursors.click,
        onShowHoverHighlight: (value) => onHover.value = value,
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium24),
          margin: const EdgeInsets.only(top: 10),
          width: AppSizesUnit.lessonItemSize,
          height: AppSizesUnit.lessonItemSize,
          decoration: BoxDecoration(
            color: lesson.isNew ? AppColors.primaryBlue : AppColors.secondaryBlue,
            boxShadow: onHover.value
                ? const [
                    BoxShadow(
                      color: AppColors.shadow,
                      spreadRadius: 0,
                      offset: Offset(0, 15),
                      blurRadius: 15,
                      blurStyle: BlurStyle.normal,
                    ),
                  ]
                : [],
            borderRadius: BorderRadius.circular(AppSizesUnit.small8),
          ),
          child: Center(
            child: Heading(
              6,
              t(context).thing_number(t(context).lesson_number, index),
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class LineDashedPainter extends CustomPainter {
  final double height;

  LineDashedPainter(this.height);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.primaryBlue
      ..strokeWidth = 2;
    var max = height;
    var dashWidth = 2;
    var dashSpace = 2;
    double startY = -12;
    while (max >= 0) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      final space = (dashSpace + dashWidth);
      startY += space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
