import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_package/shared_package.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final String path;
  const MenuItem({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.go(path),
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium16),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSizesUnit.small8),
          ),
          child: Row(
            children: [
              Expanded(child: Heading(8, text)),
              AppSizesUnit.sizedBox16,
              const Icon(AppIcons.arrowRight, size: AppSizesUnit.medium24, color: AppColors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
