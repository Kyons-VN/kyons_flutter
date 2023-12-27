import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_package/shared_package.dart';

import '../../helper/translate.dart';

class LargeBtn extends StatelessWidget {
  final Color color;
  final bool disabled;
  final Function()? onClick;

  const LargeBtn({
    super.key,
    this.color = AppColors.lightBlue1,
    this.onClick,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onClick,
      child: MouseRegion(
        cursor: disabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: disabled ? Colors.transparent : AppColors.secondaryBlue,
            borderRadius: const BorderRadius.all(Radius.circular(AppSizesUnit.medium12)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  // foregroundDecoration: const BoxDecoration(
                  //   image: DecorationImage(image: Svg('assets/images/shortcut.svg'), alignment: Alignment.bottomRight),
                  // ),
                  decoration: BoxDecoration(
                    color: disabled ? AppColors.blueGray500 : null,
                    gradient: disabled
                        ? null
                        : LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: color == AppColors.lightBlue1
                                ? [AppColors.lightBlue1, AppColors.secondaryBlue.withOpacity(0)]
                                : [AppColors.orange, AppColors.orange],
                          ),
                  ),
                ),
              ),
              Positioned.fill(
                child: SvgPicture.asset('assets/images/shortcut.svg', alignment: Alignment.bottomRight),
              ),
              Container(
                padding: const EdgeInsets.all(AppSizesUnit.medium20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      t(context).continueLastSession,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: disabled ? AppColors.white.withOpacity(0.5) : AppColors.white),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const Icon(AppIcons.arrowForward, color: AppColors.white, size: AppSizesUnit.medium24)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
