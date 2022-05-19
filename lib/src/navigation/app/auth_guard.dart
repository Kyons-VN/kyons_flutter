import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';

String? guard(GoRouterState state, auth) {
  final bool signedIn = auth.state.maybeMap(
    authenticated: (_) => true,
    orElse: () => false,
  );
  final bool signingIn = state.subloc == AppPath.signIn;

  // Go to /signin if the user is not signed in
  if (!signedIn && !signingIn) {
    return '/signin';
  }
  // Go to /books if the user is signed in and tries to go to /signin.
  else if (signedIn && signingIn) {
    return '/';
  }

  // no redirect
  return null;
}
