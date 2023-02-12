import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

import '../app/settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class LanguageSettingsPage extends HookConsumerWidget {
  const LanguageSettingsPage({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsProvider = ref.read(settingsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context).language),
        leading: GestureDetector(
          onTap: () => context.canPop() ? context.pop() : context.go(AppPaths.home.path),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: AppIcons.backIcon,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          // Glue the SettingsController to the theme selection DropdownButton.
          //
          // When a user selects a theme from the dropdown list, the
          // SettingsController is updated, which rebuilds the MaterialApp.
          child: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              children: [
                GestureDetector(
                  onTap: () => settingsProvider.updateLocale(const Locale('en', '')),
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text(
                      t(context).en,
                      style: Theme.of(context).textTheme.heading6,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => settingsProvider.updateLocale(const Locale('vi', '')),
                  child: ListTile(
                    mouseCursor: SystemMouseCursors.click,
                    title: Text(
                      t(context).vi,
                      style: Theme.of(context).textTheme.heading6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
