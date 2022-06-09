import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/theme.dart';

import '../app/settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class ThemeSettingsPage extends HookConsumerWidget {
  const ThemeSettingsPage({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsProvider = ref.read(settingsNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context).themeMode),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios),
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
                  onTap: () => settingsProvider.updateThemeMode(ThemeMode.system),
                  child: ListTile(
                    title: Text(
                      t(context).themeModeSystem,
                      style: Theme.of(context).textTheme.heading6,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => settingsProvider.updateThemeMode(ThemeMode.light),
                  child: ListTile(
                    title: Text(
                      t(context).lightMode,
                      style: Theme.of(context).textTheme.heading6,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => settingsProvider.updateThemeMode(ThemeMode.dark),
                  child: ListTile(
                    title: Text(
                      t(context).dartMode,
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
