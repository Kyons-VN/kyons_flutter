import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:shared_package/shared_package.dart';

import '../../core/helper/translate.dart';
import '../app/new_user_controller.dart';

class NewUserPage extends ConsumerWidget {
  const NewUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(newUserControllerProvider);
    ref.listen<AsyncValue>(newUserControllerProvider, (pre, next) {
      if (next is AsyncData) {
        context.go(AppPaths.learningPath.path);
      }
    });
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizesUnit.medium16, horizontal: AppSizesUnit.large56),
          child: Column(
            children: [
              AppAssets.subcriptionFreeSVG,
              AppSizesUnit.sizedBox24,
              Heading(4, t(context).freeTrial),
              AppSizesUnit.sizedBox24,
              AppHtml(data: t(context).freeTrialDesc),
              AppSizesUnit.sizedBox24,
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: state == const AsyncLoading()
                        ? null
                        : () {
                            ref.read(newUserControllerProvider.notifier).getFreeTrial();
                          },
                    child: Text(state == const AsyncLoading() ? t(context).processing : t(context).startLearing)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
