import 'package:flutter/material.dart';
import 'package:shared_package/shared_package.dart';

import '../../../navigation/domain/app_paths.dart';
import '../../../navigation/view/app_bar.dart';
import '../../../navigation/view/app_drawer.dart';
import '../menus/user_menu.dart';

class UserMenuPage extends StatelessWidget {
  const UserMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(backPath: AppPaths.home),
      endDrawer: AppDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(AppSizesUnit.medium24),
        child: UserMenu(),
      )),
    );
  }
}
