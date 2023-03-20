import 'package:flutter/material.dart';
import 'package:shared_package/shared_package.dart';

import '../../data/test_knowledge.dart';

class AnswerResultWidget extends StatelessWidget {
  final Answer answer;
  final bool isSelected;
  const AnswerResultWidget({super.key, required this.answer, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final isCorrect = answer.isCorrect;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppSizesUnit.small8),
          decoration: BoxDecoration(
              color: isCorrect ? AppColors.emerald3 : AppColors.red1,
              borderRadius: BorderRadius.circular(AppSizesUnit.small8)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: AppSizesUnit.small8),
                child: Icon(
                  isCorrect ? AppIcons.check : AppIcons.error,
                  size: 16,
                  color: isCorrect ? AppColors.darkEmerald : AppColors.red,
                ),
              ),
              AppSizesUnit.sizedBox8,
              Flexible(
                  child: Container(
                      margin: const EdgeInsets.only(bottom: AppSizesUnit.small8),
                      child: AppHtml(data: answer.content))),
            ],
          ),
        ),
        AppSizesUnit.sizedBox16,
      ],
    );
  }
}
