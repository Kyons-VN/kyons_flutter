import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/authentication/view/sign_in.dart';
import 'package:kyons_flutter/src/home/view/home.dart';

class AppPath {
  static const home = '/home';
  static const signIn = '/sign-in';
  static const signOut = '/sign-out';
}

GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: AppPath.home,
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: AppPath.signIn,
      pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SignInPage(),
        transitionsBuilder: _slideTransitionBuilder(),
      ),
    ),
  ],
  // redirect: guard,
  debugLogDiagnostics: true,
);

_slideTransitionBuilder() =>
    (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) =>
        SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(0.25, 0.25),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeIn)),
          ),
          child: child,
        );
