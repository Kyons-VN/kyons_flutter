import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            leading: const Icon(AppIcons.home, color: AppColors.white),
            title: const Text(
              'Home',
              style: TextStyle(color: AppColors.white),
            ),
            onTap: () => context.go(AppPaths.home.path),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.palette, color: AppColors.white),
            title: const Text(
              'Design',
              style: TextStyle(color: AppColors.white),
            ),
            onTap: () {
              context.go(AppPaths.design.path);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.games, color: AppColors.white),
            title: const Text(
              'Game',
              style: TextStyle(color: AppColors.white),
            ),
            onTap: () => context.go(AppPaths.game.path),
          ),
          const Divider(),
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
            onTap: () {
              ref.read(authNotifierProvider.notifier).signOut();
              ref.read(authNotifierProvider.notifier).stateChanged();
            },
          ),
        ],
      ),
    );
  }
}
