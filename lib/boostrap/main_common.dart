import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:shared_package/shared_package.dart';

import '../src/authentication/app/auth_provider.dart';
import '../src/core/helper/translate.dart';
import '../src/navigation/app/router.dart';
import '../src/settings/app/settings_controller.dart';
import 'config_reader.dart';
import 'firebase_options.dart';

Future<void> mainCommon(Environment env) async {
  // if (!kIsWeb) runApp(const SplashScreen());
  //Call this first to make sure we can make other system level calls safely
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the settings controller
  GoogleFonts.config.allowRuntimeFetching = false;
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  await Future.wait([
    ConfigReader.initialize(env),
    // settingsProvider.loadSettings(),
    // if (!kIsWeb) Future.delayed(const Duration(seconds: 1)),
  ]);

  // Game section
  // FirebaseCrashlytics? crashlytics;
  // await guardWithCrashlytics(
  //   guardedMain,
  //   crashlytics: crashlytics,
  // );

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  guardedMain();
}

Logger _log = Logger('main_dev.dart');

class LoggerProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _log.info('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}

void guardedMain() {
  if (kReleaseMode) {
    // Don't log anything below warnings in production.
    Logger.root.level = Level.WARNING;
  }
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: '
        '${record.loggerName}: '
        '${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();

  _log.info('Going full screen');
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  final container = ProviderContainer(observers: [
    // LoggerProviderObserver(),
  ]);

  runApp(UncontrolledProviderScope(
    container: container,
    // child: kIsWeb ? const WebAppWidget(builder: _builder) : const AppWidget(),
    child: const AppWidget(),
  ));
}

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> with WidgetsBindingObserver {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final settingsProvider = ref.read(settingsNotifierProvider.notifier);
    settingsProvider.loadSettings();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // final trackingNotifier = ref.read(trackingNotifierProvider.notifier);
    // final lessonNotifier = ref.read(lessonStudyNotifierProvider.notifier);
    switch (state) {
      case AppLifecycleState.resumed:
        debugPrintStack(maxFrames: 1);
        print("app in resumed");
        // trackingNotifier.enable();
        // lessonNotifier.enableTracking();
        break;
      case AppLifecycleState.inactive:
        print("app in inactive");
        // trackingNotifier.disable();
        // lessonNotifier.disableTracking();
        break;
      case AppLifecycleState.paused:
        print("app in paused");
        // trackingNotifier.disable();
        // lessonNotifier.disableTracking();
        break;
      case AppLifecycleState.detached:
        print("app in detached");
        // trackingNotifier.disable();
        // lessonNotifier.disableTracking();
        break;
      case AppLifecycleState.hidden:
        print("app in hidden");
        // trackingNotifier.disable();
        // lessonNotifier.disableTracking();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final trackingNotifier = ref.read(trackingNotifierProvider.notifier);
    ref.listen<AuthState>(authNotifierProvider, (s1, s2) {
      if (s2 == const AuthState.authenticated()) {
        // trackingNotifier.enable();
      } else {
        // trackingNotifier.disable();
      }
    });
    AppRouter.init(ref);
    return _builder(ref);
  }
}

AnimatedBuilder _builder(WidgetRef ref) {
  final settingsProvider = ref.read(settingsNotifierProvider);
  final goRouter = ref.watch(goRouterProvider);
  return AnimatedBuilder(
    animation: settingsProvider,
    builder: (BuildContext context, Widget? child) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        // Providing a restorationScopeId allows the Navigator built by the
        // MaterialApp to restore the navigation stack when a user leaves and
        // returns to the app after it has been killed while running in the
        // background.
        restorationScopeId: 'app',

        // Provide the generated AppLocalizations to the MaterialApp. This
        // allows descendant Widgets to display the correct translations
        // depending on the user's locale.
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('vi', ''),
          Locale('en', ''), // English, no country code
        ],
        locale: settingsProvider.locale,

        // Use AppLocalizations to configure the correct application title
        // depending on the user's locale.
        //
        // The appTitle is defined in .arb files found in the localization
        // directory.
        onGenerateTitle: (BuildContext context) => t(context).appTitle,

        // Define a light and dark color theme. Then, read the user's
        // preferred ThemeMode (light, dark, or system default) from the
        // SettingsController to display the correct theme.
        theme: lightTheme(),
        // darkTheme: darkTheme(),
        // themeMode: settingsNotifierProvider.themeMode,
        routeInformationParser: goRouter.routeInformationParser,
        routerDelegate: goRouter.routerDelegate,
        routeInformationProvider: goRouter.routeInformationProvider,
      );
    },
  );
}
