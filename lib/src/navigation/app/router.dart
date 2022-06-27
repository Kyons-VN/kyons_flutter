import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/authentication/view/sign_in_page.dart';
import 'package:kyons_flutter/src/design/view/design_page.dart';
import 'package:kyons_flutter/src/game_template/game_route.dart';
import 'package:kyons_flutter/src/home/view/home_page.dart';
import 'package:kyons_flutter/src/learning_path/view/learning_path_page.dart';
import 'package:kyons_flutter/src/navigation/app/auth_guard.dart';
import 'package:kyons_flutter/src/navigation/domain/app_paths.dart';
import 'package:kyons_flutter/src/settings/view/language_settings_page.dart';
import 'package:kyons_flutter/src/settings/view/settings_page.dart';
import 'package:kyons_flutter/src/settings/view/theme_settings_page.dart';
import 'package:kyons_flutter/src/test_knowledge/view/diagnostic_test_page.dart';

class AppRouter {
  AppRouter._();

  static bool isInitialized = false;
  static late GoRouter router;
  static final List<AppPath> _redirects = [];

  factory AppRouter.init(WidgetRef ref) {
    if (isInitialized) return AppRouter._();
    final authNotifier = ref.read(authNotifierProvider.notifier);

    router = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          redirect: (_) => AppPaths.home.path,
        ),
        GoRoute(
          path: AppPaths.home.path,
          builder: (BuildContext context, GoRouterState state) => const HomePage(),
          redirect: (state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.signIn.path,
          pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
            key: state.pageKey,
            child: const SignInPage(),
            transitionsBuilder: _slideTransitionBuilder(),
          ),
          // redirect: (state) => guard(state, authState),
        ),
        GoRoute(
          path: AppPaths.settings.path,
          builder: (BuildContext context, GoRouterState state) => const SettingsPage(),
          routes: [
            GoRoute(
              path: 'theme',
              pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
                key: state.pageKey,
                child: const ThemeSettingsPage(),
                transitionsBuilder: _slideTransitionBuilder(),
              ),
            ),
            GoRoute(
              path: 'language',
              pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
                key: state.pageKey,
                child: const LanguageSettingsPage(),
                transitionsBuilder: _slideTransitionBuilder(),
              ),
            ),
          ],
          // pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
          //   key: state.pageKey,
          //   child: const SettingsPage(),
          //   transitionsBuilder: _slideTransitionBuilder(),
          // ),
        ),
        GoRoute(
          path: AppPaths.design.path,
          builder: (BuildContext context, GoRouterState state) => const DesignPage(),
          redirect: (state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.diagnosticTest.path,
          builder: (BuildContext context, GoRouterState state) => const DiagnosticTestPage(),
          redirect: (state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.learningPath.path,
          builder: (BuildContext context, GoRouterState state) => const LearningPathPage(),
          redirect: (state) => guard(state, ref),
        ),
        GameRoute().getGameRoute('/game', guard, ref),
      ],
      refreshListenable: GoRouterRefreshStream(authNotifier.stream),
      debugLogDiagnostics: true,
    );

    isInitialized = true;

    return AppRouter._();
  }

  static pushRedirect(String serverRedirectName) {
    _redirects.add(AppPaths.getByRedirectName(serverRedirectName));
  }

  static void redirect() {
    final redirect = _redirects.isNotEmpty ? _redirects.first : null;
    if (redirect != null) {
      router.go(redirect.path);
    } else {
      router.go(AppPaths.home.path);
    }
    _redirects.clear();
  }
}

_slideTransitionBuilder() =>
    (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) =>
        SlideTransition(
          position: animation.drive(
            Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).chain(CurveTween(curve: Curves.easeIn)),
          ),
          child: child,
        );
