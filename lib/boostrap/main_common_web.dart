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

import '../src/core/helper/translate.dart';
import '../src/flash/flash_screen.dart';
import '../src/navigation/app/router.dart';
import '../src/settings/app/settings_controller.dart';
import '../src/settings/data/settings_service.dart';
import 'config_reader.dart';
import 'firebase_options.dart';
import 'web_app.dart';

Future<void> mainCommon(Environment env) async {
  runApp(const SplashScreen());
  //Call this first to make sure we can make other system level calls safely
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the settings controller
  final settingsProvider = SettingsProvider(SettingsService());
  GoogleFonts.config.allowRuntimeFetching = false;
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  await Future.wait([
    ConfigReader.initialize(env),
    settingsProvider.loadSettings(),
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

Logger _log = Logger('main_dev_web.dart');

class LoggerProviderObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
//     _log.info('''
// {
//   "provider": "${provider.name ?? provider.runtimeType}",
//   "newValue": "$newValue"
// }''');
  }
}

void guardedMain() {
  if (kReleaseMode) {
    // Don't log anything below warnings in production.
    Logger.root.level = Level.WARNING;
  } else {
    Logger.root.level = Level.ALL;
  }
  Logger.root.onRecord.listen((record) {
    // debugPrint('${record.level.name}: ${record.time}: '
    //     '${record.loggerName}: '
    //     '${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();

  _log.info('Going full screen');
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  final container = ProviderContainer(observers: [LoggerProviderObserver()]);

  runApp(UncontrolledProviderScope(
    container: container,
    child: const WebAppWidget(
      builder: _builder,
    ),
  ));
}

AnimatedBuilder _builder(WidgetRef ref) {
  final settingsProvider = ref.read(settingsNotifierProvider);
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
        routeInformationParser: AppRouter.router.routeInformationParser,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationProvider: AppRouter.router.routeInformationProvider,
      );
    },
  );
}
