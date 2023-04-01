import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../navigation/domain/app_paths.dart';
import '../app/sign_out_controller.dart';

class SignOutPage extends ConsumerWidget {
  const SignOutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.read(signOutControllerProvider.notifier).signOut();
    ref.listen<bool>(signOutControllerProvider, (previous, next) {
      if (next) {
        context.go(AppPaths.signIn.path);
      }
    });
    return const Scaffold(
      backgroundColor: AppColors.primaryBlue,
    );
  }
}
