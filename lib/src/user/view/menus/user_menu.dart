import 'package:flutter/material.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../navigation/domain/app_paths.dart';
import 'menu_item.dart';

class UserMenu extends StatelessWidget {
  const UserMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Heading(4, t(context).profile),
        AppSizesUnit.sizedBox24,
        MenuItem(text: t(context).userInfo, path: AppPaths.userInfo.path),
        AppSizesUnit.sizedBox16,
        MenuItem(text: t(context).changePassword, path: AppPaths.changePassword.path),
        AppSizesUnit.sizedBox16,
        MenuItem(text: t(context).deleteAccount, path: AppPaths.deleteAccount.path),
      ],
    );
  }
}
