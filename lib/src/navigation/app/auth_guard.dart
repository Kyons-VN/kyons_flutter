import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';

String? guard(GoRouterState state, AuthState authState) {
  final bool signedIn = authState.maybeMap(orElse: () => false, authenticated: (_) => true);
  final bool signingIn = state.subloc == '/signin';

  // Go to /signin if the user is not signed in
  if (!signedIn && !signingIn) {
    return AppPath.signIn;
  }
  // Go to /books if the user is signed in and tries to go to /signin.
  else if (signedIn && signingIn) {
    return AppPath.home;
  }

  // no redirect
  return null;
}
