import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/user/app/summary/summary_controller.dart';
import 'package:shared_package/shared_package.dart';

import '../../../core/helper/translate.dart';
import '../../../navigation/domain/app_paths.dart';
import '../../../navigation/view/app_drawer.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(backPath: AppPaths.account),
      endDrawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizesUnit.medium24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Heading(4, t(context).deleteAccount),
              AppSizesUnit.sizedBox24,
              Container(
                padding: const EdgeInsets.all(AppSizesUnit.medium16),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(AppSizesUnit.medium16),
                ),
                child: Consumer(
                  builder: (context, ref, child) {
                    final state = ref.read(summaryControllerProvider);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(t(context).deleteAccountDesc),
                        AppSizesUnit.sizedBox24,
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(t(context).deleteAccount),
                        ).medium(context),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
