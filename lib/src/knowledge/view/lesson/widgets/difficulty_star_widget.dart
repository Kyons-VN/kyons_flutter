import 'package:flutter/material.dart';
import 'package:shared_package/shared_package.dart';

class DifficultyStarWidget extends StatelessWidget {
  final int difficultyLevel;
  const DifficultyStarWidget(this.difficultyLevel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < difficultyLevel; i++)
          const Icon(
            Icons.star,
            color: AppColors.lightBlue2,
            size: 24,
          ),
        for (var i = 0; i < 5 - difficultyLevel; i++)
          const Icon(
            Icons.star_border,
            color: AppColors.lightBlue6,
            size: 24,
          ),
      ],
    );
  }
}
