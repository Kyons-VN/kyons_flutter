import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/main.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/assets.dart';
import 'package:kyons_flutter/src/core/view/theme.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.read(authNotifierProvider.notifier);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const MainAppBar(),
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 48 - 36,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSpacings.medium24,
                  AppSpacings.medium36,
                  AppSpacings.medium24,
                  AppSpacings.large48,
                ),
                child: Center(
                  child: Column(
                    children: [
                      AppAssets.chooseSubjectSVG,
                      AppSpacings.sizedBox24,
                      Text(
                        t(context).choose_subject_and_program,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Expanded(child: Container()),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ElevatedIconButton(
                            onPressed: () {
                              print('aa');
                            },
                            icon: KyonsIcons.add,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
