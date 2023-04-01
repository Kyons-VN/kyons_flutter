import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';
import '../../navigation/domain/app_paths.dart';
import 'language_switcher.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t(context).settings),
        // leading: IconButton(
        //   onPressed: () => context.pop(),
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading(7, t(context).language),
                AppSizesUnit.sizedBox8,
                const LanguageSwitcher(),
                // Consumer(builder: (context, ref, child) {
                //   return CupertinoPickerOptions<LocaleOption>(
                //     options: AppLocalizations.supportedLocales.map((e) => LocaleOption(e.languageCode)).toList(),
                //     onPicked: some((v) => ref.read(settingsNotifierProvider).updateLocale(v)),
                //     selectedOption: optionOf(LocaleOption(Localizations.localeOf(context).languageCode)),
                //   );
                // })
              ],
            ),
            // child: ListView(
            //   shrinkWrap: true,
            //   children: [
            //     GestureDetector(
            //       onTap: () => context.push(AppPaths.languageSettings.path),
            //       child: ListTile(
            //         title: Text(
            //           t(context).language,
            //           style: Theme.of(context).textTheme.heading6,
            //         ),
            //         trailing: const Icon(Icons.arrow_forward),
            //       ),
            //     ),
            // GestureDetector(
            //   onTap: () => context.push(AppPaths.themeSettings.path),
            //   child: ListTile(
            //     title: Text(
            //       t(context).themeMode,
            //       style: Theme.of(context).textTheme.heading6,
            //     ),
            //     trailing: const Icon(Icons.arrow_forward),
            //   ),
            // ),
            // ],
            // ),
          ),
        ),
      ),
    );
  }
}
