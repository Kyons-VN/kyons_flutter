import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_package/shared_package.dart';

import '../../navigation/domain/app_paths.dart';
import '../app/sign_out_controller.dart';

class SignOutPage extends ConsumerStatefulWidget {
  const SignOutPage({super.key});

  @override
  ConsumerState<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends ConsumerState<SignOutPage> {
  @override
  void initState() {
    super.initState();
    ref.read(signOutControllerProvider.notifier).signOut();
  }

  @override
  Widget build(BuildContext context) {
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
