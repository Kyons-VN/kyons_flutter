import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../settings/app/settings_controller.dart';

class LanguageSwitcher extends HookConsumerWidget {
  const LanguageSwitcher({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButtonFormField<Locale>(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white, width: 1),
            borderRadius: BorderRadius.circular(AppSizesUnit.small5),
          ),
          filled: true,
          fillColor: AppColors.white,
        ),
        dropdownColor: AppColors.white,
        icon: const Icon(
          AppIcons.arrowDown,
          size: AppSizesUnit.medium16,
        ),
        value: ref.read(settingsNotifierProvider).locale,
        onChanged: ref.read(settingsNotifierProvider).updateLocale,
        items: const [
          DropdownMenuItem(
            value: Locale('en'),
            child: Text('English'),
          ),
          DropdownMenuItem(
            value: Locale('vi'),
            child: Text('Tiếng Việt'),
          ),
        ]);
    // return DropdownButton<Locale>(
    //   icon: const Icon(Icons.language),
    //   items: const [
    //     DropdownMenuItem(
    //       value: Locale('en'),
    //       child: Text('English'),
    //     ),
    //     DropdownMenuItem(
    //       value: Locale('vi'),
    //       child: Text('Tiếng Việt'),
    //     ),
    //   ],
    //   onChanged: (v) => ref.read(settingsNotifierProvider).updateLocale(v),
    //   value: ref.read(settingsNotifierProvider).locale,
    // );
  }
}
