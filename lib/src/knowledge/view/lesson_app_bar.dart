import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class LessonAppBar extends StatelessWidget with PreferredSizeWidget {
  final AppPath? backPath;
  final Function openCallback;
  const LessonAppBar({Key? key, this.backPath, required this.openCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          backPath != null ? context.go(backPath!.path) : context.go(AppPaths.learningPath.path);
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AppIcons.backIcon,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            openCallback();
          },
          child: AppIcons.lessonContentIcon,
        ),
        GestureDetector(
          onTap: () {},
          child: AppIcons.notificationIcon,
        ),
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
