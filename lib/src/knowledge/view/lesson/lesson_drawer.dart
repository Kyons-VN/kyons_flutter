import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/knowledge/data/knowledge_entities.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

class LessonDrawer extends StatelessWidget {
  final LessonGroup lessonGroup;
  const LessonDrawer(this.lessonGroup, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Row(
              children: [
                const Icon(AppIcons.arrowLeft, color: AppColors.orange),
                const SizedBox(width: 15),
                Text(
                  t(context).back,
                  style: const TextStyle(color: AppColors.orange),
                ),
              ],
            ),
            onTap: Navigator.of(context).pop,
          ),
          ListTile(
            leading: const Icon(AppIcons.lessonContent, color: AppColors.white),
            title: Text(
              t(context).learningPath,
              style: const TextStyle(color: AppColors.white),
            ),
            onTap: () => {},
          ),
          const Divider(),
          // ListTile(
          //   leading: const Icon(Icons.palette, color: AppColors.white),
          //   title: const Text(
          //     'Design',
          //     style: TextStyle(color: AppColors.white),
          //   ),
          //   onTap: () {
          //     context.go(AppPaths.design.path);
          //   },
          // ),
          // const Divider(),
          // ListTile(
          //   leading: const Icon(Icons.games, color: AppColors.white),
          //   title: const Text(
          //     'Game',
          //     style: TextStyle(color: AppColors.white),
          //   ),
          //   onTap: () => context.go(AppPaths.game.path),
          // ),
          // const Divider(),
          ListTile(
            leading: const Icon(Icons.settings, color: AppColors.white),
            title: const Text(
              'Settings',
              style: TextStyle(color: AppColors.white),
            ),
            onTap: () {
              context.push(AppPaths.settings.path);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: AppColors.white),
            title: Text(
              t(context).signOut,
              style: const TextStyle(color: AppColors.white),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class LessonMenu extends StatelessWidget {
  final LessonGroup lessonGroup;

  const LessonMenu(this.lessonGroup, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FocusableActionDetector(
      onShowHoverHighlight: (value) {},
      child: ListTile(
        title: Text(
          t(context).home,
          style: const TextStyle(color: AppColors.white),
        ),
        onTap: () => {},
      ),
    );
  }
}
