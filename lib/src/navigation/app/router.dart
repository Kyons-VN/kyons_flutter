import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/view/sign_in.dart';
import 'package:kyons_flutter/src/home/view/home.dart';
import 'package:kyons_flutter/src/navigation/app/auth_guard.dart';

class AppPath {
  static const home = '/home';
  static const signIn = '/sign-in';
  static const signOut = '/sign-out';
}

class AppRouter {
  final WidgetRef ref;
  late GoRouter router;
  AppRouter(this.ref) {
    final AuthNotifier authNotifierProvider = ref.read(authProvider.notifier);
    final AuthState authState = ref.watch(authProvider);

    router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          redirect: (_) => AppPath.home,
        ),
        GoRoute(
          path: AppPath.home,
          builder: (BuildContext context, GoRouterState state) => const HomePage(),
          redirect: (state) => guard(state, authState),
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
      refreshListenable: GoRouterRefreshStream(authNotifierProvider.stream),
      debugLogDiagnostics: true,
    );
  }
}

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
