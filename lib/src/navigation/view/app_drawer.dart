import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';
import '../../navigation/domain/app_paths.dart';
import '../../settings/view/language_switcher.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final currentUserState = ref.watch(currentUserProvider);
    return Drawer(
      child: ListView(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: context.pop,
              child: Container(
                padding: const EdgeInsets.all(AppSizesUnit.medium24),
                child: Row(
                  children: [
                    const Icon(
                      AppIcons.arrowLeft,
                      size: AppSizesUnit.medium24,
                      color: AppColors.orange,
                    ),
                    AppSizesUnit.sizedBox8,
                    Expanded(
                      child: Text(t(context).back,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.orange)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          DrawerMenuItem(appPath: AppPaths.home, icon: AppIcons.home, pageName: t(context).home),
          const Divider(),
          DrawerMenuItem(
              appPath: AppPaths.learningPath, icon: AppIcons.lessonContent, pageName: t(context).learningPath),
          const Divider(),
          DrawerMenuItem(appPath: AppPaths.user, icon: AppIcons.profile, pageName: t(context).profile),
          const Divider(),
          DrawerMenuItem(appPath: AppPaths.account, icon: AppIcons.bankTransfer, pageName: t(context).account),
          // const Divider(),
          // DrawerMenuItem(appPath: AppPaths.settings, icon: Icons.settings, pageName: t(context).settings),
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
          const Divider(),
          DrawerMenuItem(appPath: AppPaths.signOut, icon: AppIcons.signOut, pageName: t(context).signOut),
          AppSizesUnit.sizedBox48,
          const Padding(padding: EdgeInsets.all(16), child: LanguageSwitcher()),
        ],
      ),
    );
  }
}

class DrawerMenuItem extends StatelessWidget {
  final String pageName;
  final AppPath appPath;
  final IconData icon;
  const DrawerMenuItem({Key? key, required this.appPath, required this.icon, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentPath = GoRouter.of(context).location;
    final color = appPath.path == currentPath ? AppColors.lightBlue1 : AppColors.white;
    void goTo(String path) {
      Navigator.of(context).pop();
      if (path != currentPath) context.push(path);
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => goTo(appPath.path),
        child: Container(
          padding: const EdgeInsets.all(AppSizesUnit.medium24),
          child: Row(
            children: [
              Icon(
                icon,
                size: AppSizesUnit.medium24,
                color: color,
              ),
              AppSizesUnit.sizedBox8,
              Expanded(
                child: Heading(8, pageName, color: color),
              ),
              AppSizesUnit.sizedBox8,
              const Icon(AppIcons.arrowRight, size: AppSizesUnit.medium24, color: AppColors.orange),
            ],
          ),
        ),
      ),
    );
    return ListTile(
      leading: Icon(icon, color: currentPath == appPath.path ? AppColors.lightBlue1 : AppColors.white),
      title: Text(
        pageName,
        style: const TextStyle(color: AppColors.white),
      ),
      onTap: () => goTo(appPath.path),
    );
  }
}
