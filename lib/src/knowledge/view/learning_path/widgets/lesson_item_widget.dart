import 'package:flutter/material.dart';
import 'package:shared_package/shared_package.dart';

class LesssonItemWidget extends StatelessWidget {
  final Widget? image;
  final String? body;
  final Color? color;
  final Function? onClick;
  final bool showArrow;
  const LesssonItemWidget({this.image, this.body, this.color, this.onClick, this.showArrow = false, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: onClick != null ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: onClick != null ? () => onClick!() : null,
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.small8),
          decoration: BoxDecoration(
            color: color ?? AppColors.primaryBlue,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (image != null) ...[
                image!,
                AppSizesUnit.sizedBox16,
              ],
              if (body != null)
                Expanded(
                  child: Text(
                    body!,
                    style: const TextStyle(
                      color: AppColors.white,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                  ),
                ),
              if (showArrow)
                const Icon(
                  AppIcons.arrowRight,
                  color: AppColors.white,
                  size: AppSizesUnit.medium24,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
