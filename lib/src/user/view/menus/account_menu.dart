import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:shared_package/shared_package.dart';

import '../../../navigation/domain/app_paths.dart';
import 'menu_item.dart';

class AccountMenu extends StatelessWidget {
  const AccountMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Heading(4, t(context).profile),
        AppSizesUnit.sizedBox24,
        MenuItem(text: t(context).yourAccount, path: AppPaths.account.path),
        AppSizesUnit.sizedBox16,
        MenuItem(text: t(context).transactionHistory, path: AppPaths.transactionHistory.path),
        AppSizesUnit.sizedBox16,
        MenuItem(text: t(context).yourServices, path: AppPaths.services.path),
      ],
    );
  }
}
