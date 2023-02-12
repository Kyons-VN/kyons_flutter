import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/app/current_user_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserState = ref.watch(currentUserProvider);
    return Drawer(
      child: ListView(
        children: [
          currentUserState.userOption.map((t) => t).foldRight(Container(),
              (acc, user) => ListTile(title: Heading(6, t(context).hi_so(user.firstName), color: AppColors.white))),
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
          DrawerMenuItem(appPath: AppPaths.home, icon: AppIcons.home, pageName: t(context).home),
          const Divider(),
          DrawerMenuItem(
              appPath: AppPaths.learningPath, icon: AppIcons.lessonContent, pageName: t(context).learning_path),
          const Divider(),
          DrawerMenuItem(appPath: AppPaths.settings, icon: Icons.settings, pageName: t(context).settings),
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
          ListTile(
            leading: const Icon(Icons.logout, color: AppColors.white),
            title: Text(
              t(context).signOut,
              style: const TextStyle(color: AppColors.white),
            ),
            onTap: () {
              ref
                  .read(authNotifierProvider.notifier)
                  .signOut()
                  .then((value) => ref.read(authNotifierProvider.notifier).stateChanged());
            },
          ),
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
    void goTo(String path) {
      Navigator.of(context).pop();
      if (path != currentPath) context.push(path);
    }

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
