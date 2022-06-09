import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/settings/app/settings_controller.dart';

class LanguageSwitcher extends HookConsumerWidget {
  const LanguageSwitcher({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton<Locale>(
      icon: const Icon(Icons.language),
      items: const [
        DropdownMenuItem(
          value: Locale('en'),
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: Locale('vi'),
          child: Text('Tiếng Việt'),
        ),
      ],
      onChanged: (v) => ref.read(settingsNotifierProvider).updateLocale(v),
      value: ref.read(settingsNotifierProvider).locale,
    );
  }
}
