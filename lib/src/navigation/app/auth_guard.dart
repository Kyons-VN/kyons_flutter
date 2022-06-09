import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';

String? guard(GoRouterState state, WidgetRef ref) {
  final authState = ref.watch(authNotifierProvider);
  final bool signedIn = authState.maybeMap(orElse: () => false, authenticated: (_) => true);
  final bool signingIn = authState.maybeMap(orElse: () => false, loading: (_) => true);

  // Go to sign-in if the user is not signed in
  if (!signedIn && !signingIn) {
    return AppPaths.signIn.path;
  }
  // Go to home if the user is signed in and tries to go to /signin.
  else if (signedIn && signingIn) {
    return AppPaths.home.path;
  }

  // no redirect
  return null;
}
