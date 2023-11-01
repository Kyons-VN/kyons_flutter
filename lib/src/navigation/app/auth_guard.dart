import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../authentication/app/auth_provider.dart';
import '../domain/app_paths.dart';

Future<String?> guard(GoRouterState state, WidgetRef ref) async {
  final token = (await SharedPreferences.getInstance()).getString(kAccessToken) ?? '';
  final rToken = (await SharedPreferences.getInstance()).getString(kRefreshToken) ?? '';
  final signedIn = await ref.read(authNotifierProvider.notifier).isSignedIn();

  // Go to sign-in if the user is not signed in
  if (!signedIn || rToken.isEmpty || token.isEmpty) {
    return AppPaths.signIn.path;
  }
  // Go to home if the user is signed in and tries to go to /signin.
  // else if (signedIn) {
  //   return AppPaths.home.path;
  // }

  // no redirect
  return null;
}
