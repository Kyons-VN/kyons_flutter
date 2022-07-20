import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class LessonItemsListWidget extends StatelessWidget {
  final LearningPath learningPath;
  const LessonItemsListWidget({Key? key, required this.learningPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final screenHeight = MediaQuery.of(context).size.height;
      final availableBlocs = ((screenHeight - 290) / AppSizesUnit.lessonItemSize).round() - 1;
      return Stack(
        children: [
          SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              children: [
                const Icon(AppIcons.arrowUp, color: AppColors.primaryBlue),
                CustomPaint(
                    painter: LineDashedPainter(
                        (learningPath.lessons.length > availableBlocs ? learningPath.lessons.length : availableBlocs) *
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
                    ...learningPath.lessons.asMap().entries.map((entry) => LessonWidget(
                          lesson: entry.value,
                          index: entry.key + 1,
                        )),
                    if (learningPath.lessons.length < availableBlocs)
                      ...List.generate(availableBlocs - learningPath.lessons.length, (index) => null).map(
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

class LessonWidget extends StatefulWidget {
  final LessonItem lesson;
  final int index;
  const LessonWidget({Key? key, required this.lesson, required this.index}) : super(key: key);

  @override
  State<LessonWidget> createState() => _LessonWidgetState();
}

class _LessonWidgetState extends State<LessonWidget> {
  bool _onHovered = false;

  void onHover(bool hover) {
    setState(() {
      _onHovered = !_onHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppPaths.lessonPage.path.replaceFirst(':id', widget.lesson.id));
      },
      child: FocusableActionDetector(
        mouseCursor: SystemMouseCursors.click,
        onShowHoverHighlight: onHover,
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          width: AppSizesUnit.lessonItemSize,
          height: AppSizesUnit.lessonItemSize,
          decoration: BoxDecoration(
            color: widget.lesson.isNew ? AppColors.primaryBlue : AppColors.secondaryBlue,
            boxShadow: _onHovered
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
              t(context).thing_number(t(context).lesson_number, widget.index),
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
