import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';

class WebAppWidget extends ConsumerStatefulWidget {
  final AnimatedBuilder Function(WidgetRef) builder;
  const WebAppWidget({
    required this.builder,
    Key? key,
  }) : super(key: key);
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WebAppWidget();
}

class _WebAppWidget extends ConsumerState<WebAppWidget> with WidgetsBindingObserver {
  @override
  initState() {
    super.initState();
    window.addEventListener('focus', (_) => didChangeAppLifecycleState(AppLifecycleState.resumed));
    window.addEventListener('blur', (_) => didChangeAppLifecycleState(AppLifecycleState.paused));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        print("app in resumed");
        break;
      case AppLifecycleState.inactive:
        print("app in inactive");
        break;
      case AppLifecycleState.paused:
        print("app in paused");
        break;
      case AppLifecycleState.detached:
        print("app in detached");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    AppRouter.init(ref);
    final authProvider = ref.read(authNotifierProvider.notifier);
    return FutureBuilder(
      future: authProvider.stateChanged(),
      builder: (context, snapshot) {
        return widget.builder(ref);
      },
    );
  }
}
