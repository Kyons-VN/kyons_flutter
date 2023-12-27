// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

import '../src/authentication/app/auth_provider.dart';
import '../src/navigation/app/router.dart';
import '../src/tracking/app/tracking_provider.dart';

Logger _log = Logger('web_app.dart');

class WebAppWidget extends ConsumerStatefulWidget {
  final AnimatedBuilder Function(WidgetRef) builder;
  const WebAppWidget({
    required this.builder,
    super.key,
  });
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebAppWidget();
}

class _WebAppWidget extends ConsumerState<WebAppWidget> with WidgetsBindingObserver {
  @override
  initState() {
    _log.info('initState web_app');
    super.initState();
    window.addEventListener('focus', (_) => didChangeAppLifecycleState(AppLifecycleState.resumed));
    window.addEventListener('blur', (_) => didChangeAppLifecycleState(AppLifecycleState.hidden));
  }

  @override
  void dispose() {
    _log.info('dispose web_app');
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final trackingNotifier = ref.read(trackingNotifierProvider.notifier);
    // final lessonNotifier = ref.read(lessonStudyNotifierProvider.notifier);
    final authState = ref.read(authNotifierProvider);
    // if (authState != const AuthState.authenticated()) return;
    switch (state) {
      case AppLifecycleState.resumed:
        // debugPrintStack(maxFrames: 3);
        _log.info("app in resumed");
        _log.info(authState);
        if (authState == const AuthState.authenticated()) {
          trackingNotifier.resume();
          // lessonNotifier.enableTracking();
        }
        break;
      case AppLifecycleState.inactive:
        _log.info("app in inactive");
        if (authState == const AuthState.authenticated()) {
          trackingNotifier.pause();
        }
        // lessonNotifier.disableTracking();
        break;
      case AppLifecycleState.paused:
        _log.info("app in paused");
        if (authState == const AuthState.authenticated()) {
          trackingNotifier.pause();
        }
        // lessonNotifier.disableTracking();
        break;
      case AppLifecycleState.detached:
        _log.info("app in detached");
        if (authState == const AuthState.authenticated()) {
          trackingNotifier.pause();
        }
        // lessonNotifier.disableTracking();
        break;
      case AppLifecycleState.hidden:
        _log.info("app in hidden");
        if (authState == const AuthState.authenticated()) {
          trackingNotifier.pause();
        }
        // lessonNotifier.disableTracking();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final trackingNotifier = ref.read(trackingNotifierProvider.notifier);
    ref.listen<AuthState>(authNotifierProvider, (s1, s2) {
      if (s2 == const AuthState.authenticated()) {
        ref.read(trackingNotifierProvider.notifier).resume();
      } else {
        ref.read(trackingNotifierProvider.notifier).pause();
      }
    });
    AppRouter.init(ref);
    final authProvider = ref.read(authNotifierProvider.notifier);
    // authProvider.stateChanged();
    // ref.listen<AuthState>(authNotifierProvider, (previous, next) { });
    // return widget.builder(ref);
    return FutureBuilder(
      future: authProvider.stateChanged(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) return Container();
        return widget.builder(ref);
      },
    );
  }
}
