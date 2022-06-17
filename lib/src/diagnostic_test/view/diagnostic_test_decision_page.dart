import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';

class DiagnosticTestDecisionPage extends HookConsumerWidget {
  const DiagnosticTestDecisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
              onTap: () {},
              child: const Icon(AppIcons.notification),
            ),
            GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: AppIcons.menuIcon,
            ),
          ],
        ),
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: const [
                  Text('DiagnosticTestDecision'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
