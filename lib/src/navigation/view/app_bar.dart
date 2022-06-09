import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/core/view/theme.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final AppPath? backPath;
  const MainAppBar({Key? key, this.backPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backPath != null
          ? GestureDetector(
              onTap: () {
                context.go(backPath!.path);
              },
              child: AppIcons.backIcon,
            )
          : null,
      actions: [
        GestureDetector(
          onTap: () {},
          child: const Icon(AppIcons.notification),
        ),
        AppSpacings.sizedBox24,
        Builder(
          builder: (context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: AppIcons.menuIcon,
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}