import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final AppPath? backPath;
  const MainAppBar({Key? key, this.backPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          backPath != null ? context.go(backPath!.path) : context.canPop();
        },
        child: AppIcons.backIcon,
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: const Icon(AppIcons.notification),
        ),
        AppSizesUnit.sizedBox24,
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
