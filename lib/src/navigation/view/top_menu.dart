import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';

class TopMenuWidget extends ConsumerWidget {
  final int currentIndex;
  const TopMenuWidget(this.currentIndex, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        TopMenuItemWidget(
          isCurrent: currentIndex == 0,
          path: AppPaths.home,
          icon: AppAssets.homeSVG,
          name: t(context).home,
        ),
        AppSizesUnit.sizedBox8,
        TopMenuItemWidget(
          isCurrent: currentIndex == 1,
          path: AppPaths.packages,
          icon: AppAssets.storeSVG,
          name: t(context).payment,
        ),
        // TopMenuItemWidget(
        //   isCurrent: currentIndex == 2,
        //   path: AppPaths.FAQ,
        //   icon: AppAssets.homeSVG,
        //   name: t(context).home,
        // ),
      ],
    );
  }
}

class TopMenuItemWidget extends HookWidget {
  final bool isCurrent;
  final AppPath path;
  final SvgPicture icon;
  final String name;
  const TopMenuItemWidget(
      {super.key, this.isCurrent = false, required this.path, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    final isHovered = useState(false);
    return FocusableActionDetector(
      onShowHoverHighlight: (value) => isHovered.value = value,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: AppSizesUnit.large40,
          padding: const EdgeInsets.all(AppSizesUnit.small8),
          decoration: BoxDecoration(
            color: isCurrent
                ? AppColors.lightBlue6
                : isHovered.value
                    ? AppColors.lightBlue6.withAlpha(127)
                    : null,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isCurrent ? AppColors.lightBlue1 : AppColors.trasparent,
              width: 1,
            ),
          ),
          child: Row(children: [
            icon,
            AppSizesUnit.sizedBox6,
            Text(
              name,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.blueGray500,
                  ),
            ),
          ]),
        ),
      ),
    );
  }
}
