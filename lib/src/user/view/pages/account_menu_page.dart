import 'package:flutter/material.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

import '../../../navigation/view/app_bar.dart';
import '../../../navigation/view/app_drawer.dart';
import '../menus/account_menu.dart';

class AccountMenuPage extends StatelessWidget {
  const AccountMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(backPath: AppPaths.home),
      endDrawer: AppDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(AppSizesUnit.medium24),
        child: AccountMenu(),
      )),
    );
  }
}
