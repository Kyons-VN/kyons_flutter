import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/user/view/pages/services_history_page.dart';
import 'package:kyons_flutter/src/user/view/pages/summary_page.dart';

import '../../authentication/app/auth_provider.dart';
import '../../authentication/view/reset_password_page.dart';
import '../../authentication/view/sign_in_page.dart';
import '../../authentication/view/sign_out_page.dart';
import '../../authentication/view/sign_up_page.dart';
import '../../design/view/design_page.dart';
import '../../home/view/home_page.dart';
import '../../knowledge/view/learning_path/learning_path_page.dart';
import '../../knowledge/view/lesson/lesson_page.dart';
import '../../knowledge/view/lesson/new_lesson_page.dart';
import '../../navigation/app/auth_guard.dart';
import '../../navigation/domain/app_paths.dart';
import '../../settings/view/language_settings_page.dart';
import '../../settings/view/settings_page.dart';
import '../../settings/view/theme_settings_page.dart';
import '../../test_knowledge/view/mock_test/select_learning_goal_page.dart';
import '../../test_knowledge/view/mock_test/select_topic_page.dart';
import '../../test_knowledge/view/mock_test/test_page.dart';
import '../../user/view/pages/account_menu_page.dart';
import '../../user/view/pages/change_password_page.dart';
import '../../user/view/pages/delete_account_page.dart';
import '../../user/view/pages/new_user_page.dart';
import '../../user/view/pages/packages_page.dart';
import '../../user/view/pages/top_up_page.dart';
import '../../user/view/pages/transactions_history_page.dart';
import '../../user/view/pages/user_info_page.dart';
import '../../user/view/pages/user_menu_page.dart';

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
          redirect: (_, __) => AppPaths.home.path,
        ),
        GoRoute(
          path: '/diagnostic-test-decision',
          builder: (BuildContext context, GoRouterState state) => const HomePage(isShowHomeOptions: true),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.home.path,
          builder: (BuildContext context, GoRouterState state) => const HomePage(),
          name: AppPaths.home.name,
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.signIn.path,
          pageBuilder: (BuildContext context, GoRouterState state) => CustomTransitionPage(
            key: state.pageKey,
            child: const SignInPage(),
            transitionsBuilder: _slideTransitionBuilder(),
          ),
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
        ),
        GoRoute(
          path: AppPaths.design.path,
          builder: (BuildContext context, GoRouterState state) => const DesignPage(),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.learningPath.path,
          builder: (BuildContext context, GoRouterState state) => const LearningPathPage(),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.lessonPage.path,
          builder: (BuildContext context, GoRouterState state) => LessonPage(state.pathParameters['id']!),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.newLesonPage.path,
          builder: (BuildContext context, GoRouterState state) => const NewLessonPage(),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.resetPassword.path,
          builder: (BuildContext context, GoRouterState state) => const ResetPasswordPage(),
        ),
        GoRoute(
          path: AppPaths.signUp.path,
          builder: (BuildContext context, GoRouterState state) => const SignUpPage(),
        ),
        GoRoute(
          path: AppPaths.signOut.path,
          builder: (BuildContext context, GoRouterState state) => const SignOutPage(),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.newUser.path,
          builder: (BuildContext context, GoRouterState state) => const NewUserPage(),
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.account.path,
          builder: (BuildContext context, GoRouterState state) => const AccountMenuPage(),
          routes: [
            GoRoute(
              path: 'summary',
              builder: (BuildContext context, GoRouterState state) => const SummaryPage(),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: 'transactions-history',
              builder: (BuildContext context, GoRouterState state) => const TransactionsHistoryPage(),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: 'services-history',
              builder: (BuildContext context, GoRouterState state) => const ServicesHistoryPage(),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: 'packages',
              builder: (BuildContext context, GoRouterState state) => const PackagesPage(),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: 'top-up',
              builder: (BuildContext context, GoRouterState state) => const TopUpPage(),
              redirect: (_, state) => guard(state, ref),
            ),
          ],
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.user.path,
          builder: (BuildContext context, GoRouterState state) => const UserMenuPage(),
          routes: [
            GoRoute(
              path: 'user-info',
              builder: (BuildContext context, GoRouterState state) => const UserInfoPage(),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: 'change-password',
              builder: (BuildContext context, GoRouterState state) => const ChangePasswordPage(),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: 'delete-account',
              builder: (BuildContext context, GoRouterState state) => const DeleteAccountPage(),
              redirect: (_, state) => guard(state, ref),
            ),
          ],
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.mockTestLearningGoal.path,
          builder: (BuildContext context, GoRouterState state) => const SelectLearningGoalPage(),
          routes: [
            GoRoute(
              path: ':lgId/select-topic',
              builder: (BuildContext context, GoRouterState state) =>
                  SelectTopicPage(lgId: state.pathParameters['lgId']!),
              redirect: (_, state) => guard(state, ref),
            ),
            GoRoute(
              path: ':lgId/test',
              builder: (BuildContext context, GoRouterState state) => TestPage(lgId: state.pathParameters['lgId']!),
              redirect: (_, state) => guard(state, ref),
            ),
          ],
          redirect: (_, state) => guard(state, ref),
        ),
        GoRoute(
          path: AppPaths.tutorial.path,
          redirect: (_, __) => AppPaths.tutorialHome.path,
          routes: [
            GoRoute(
              path: 'home',
              builder: (BuildContext context, GoRouterState state) => const Text('Tutorial 1'),
            ),
            GoRoute(
              path: '2',
              builder: (BuildContext context, GoRouterState state) => const Text('Tutorial 2'),
            ),
            GoRoute(
              path: '3',
              builder: (BuildContext context, GoRouterState state) => const Text('Tutorial 3'),
            ),
          ],
        )
      ],
      refreshListenable: GoRouterRefreshStream(authNotifier.stream),
      debugLogDiagnostics: true,
      observers: [GoRouterObserver()],
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
          child: GestureDetector(
              onTapDown: (details) {
                print(details);
              },
              child: child),
        );

class GoRouterObserver extends NavigatorObserver {
  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {}
}

// extension AppRouteHelper on BuildContext {
//   void canPop() {
//     try {
//       GoRouter.of(this).pop();
//     } catch (e) {
//       GoRouter.of(this).go(AppPaths.home.path);
//     }
//   }
// }

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
