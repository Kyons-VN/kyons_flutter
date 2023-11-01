import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:shared_package/shared_package.dart';

import '../../helper/translate.dart';

class LargeBtn extends StatelessWidget {
  final Color color;
  final Function()? onClick;

  const LargeBtn({
    super.key,
    this.color = AppColors.lightBlue1,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          foregroundDecoration: const BoxDecoration(
            image: DecorationImage(image: Svg('assets/images/shortcut.svg'), alignment: Alignment.bottomRight),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: color == AppColors.lightBlue1
                  ? [AppColors.lightBlue1, AppColors.secondaryBlue]
                  : [AppColors.orange, AppColors.orange],
            ),
            borderRadius: const BorderRadius.all(Radius.circular(AppSizesUnit.medium12)),
          ),
          padding: const EdgeInsets.all(AppSizesUnit.medium20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                t(context).continueLastSession,
                style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.white),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const Icon(AppIcons.arrowForward, color: AppColors.white, size: AppSizesUnit.medium24)
            ],
          ),
        ),
      ),
    );
  }
}
