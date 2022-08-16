import 'dart:async';
import 'dart:math' as math;

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/authentication/app/auth_provider.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/game_template/ads/ads_controller.dart';
import 'package:kyons_flutter/src/game_template/crashlytics/crashlytics.dart';
import 'package:kyons_flutter/src/game_template/game_main.dart';
import 'package:kyons_flutter/src/game_template/games_services/games_services.dart';
import 'package:kyons_flutter/src/game_template/in_app_purchase/in_app_purchase.dart';
import 'package:kyons_flutter/src/game_template/player_progress/persistence/local_storage_player_progress_persistence.dart';
import 'package:kyons_flutter/src/game_template/settings/persistence/local_storage_settings_persistence.dart';
import 'package:kyons_flutter/src/navigation/app/router.dart';
import 'package:kyons_flutter/src/settings/app/settings_controller.dart';
import 'package:kyons_flutter/src/settings/data/settings_service.dart';
import 'package:logging/logging.dart';

class ThreeFourthsCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final offset = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..color = AppColors.white;
    final rect = Rect.fromCenter(center: offset, width: size.width, height: size.height);
    canvas.drawArc(rect, 0, (360 * 0.75) * math.pi / 180, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SplashScreen extends HookWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AnimationController animationController1 =
        useAnimationController(duration: const Duration(seconds: 3), initialValue: 1);
    AnimationController animationController2 =
        useAnimationController(duration: const Duration(seconds: 3), initialValue: 0.75)..repeat();
    animationController1.repeat(reverse: false);
    final animTurn = Tween<double>(begin: 0.0, end: -1.0).animate(animationController2);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        color: AppColors.primaryBlue,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: animationController1,
              child: SizedBox(
                height: 100,
                width: 100,
                child: CustomPaint(painter: ThreeFourthsCirclePainter()),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: animTurn,
              child: SizedBox(
                height: 75,
                width: 75,
                child: CustomPaint(painter: ThreeFourthsCirclePainter()),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: RotationTransition(
              turns: animationController1,
              child: SizedBox(
                height: 50,
                width: 50,
                child: CustomPaint(painter: ThreeFourthsCirclePainter()),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Future<void> mainCommon(String env) async {
  if (!kIsWeb) runApp(const SplashScreen());
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
    if (!kIsWeb) Future.delayed(const Duration(seconds: 1)),
  ]);

  // Game section
  FirebaseCrashlytics? crashlytics;
  await guardWithCrashlytics(
    guardedMain,
    crashlytics: crashlytics,
  );
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

  // TODO: When ready, uncomment the following lines to enable integrations.
  //       Read the README for more info on each integration.
  AdsController? adsController;
  // if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
  //   /// Prepare the google_mobile_ads plugin so that the first ad loads
  //   /// faster. This can be done later or with a delay if startup
  //   /// experience suffers.
  //   adsController = AdsController(MobileAds.instance);
  //   adsController.initialize();
  // }

  GamesServicesController? gamesServicesController;
  // if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
  //   gamesServicesController = GamesServicesController()
  //     // Attempt to log the player in.
  //     ..initialize();
  // }

  InAppPurchaseController? inAppPurchaseController;
  // if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
  //   inAppPurchaseController = InAppPurchaseController(InAppPurchase.instance)
  //     // Subscribing to [InAppPurchase.instance.purchaseStream] as soon
  //     // as possible in order not to miss any updates.
  //     ..subscribe();
  //   // Ask the store what the player has bought already.
  //   inAppPurchaseController.restorePurchases();
  // }
  final container = ProviderContainer(observers: [LoggerProviderObserver()]);

  runApp(UncontrolledProviderScope(
    container: container,
    child: GameMain(
      settingsPersistence: LocalStorageSettingsPersistence(),
      playerProgressPersistence: LocalStoragePlayerProgressPersistence(),
      inAppPurchaseController: inAppPurchaseController,
      adsController: adsController,
      gamesServicesController: gamesServicesController,
      child: kIsWeb ? const WebAppWidget() : const AppWidget(),
    ),
  ));
}

class AppWidget extends HookConsumerWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppRouter.init(ref);
    return _builder(ref);
  }
}

class WebAppWidget extends HookConsumerWidget {
  const WebAppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AppRouter.init(ref);
    final authProvider = ref.read(authNotifierProvider.notifier);
    return FutureBuilder(
      future: authProvider.stateChanged(),
      builder: (context, snapshot) {
        return _builder(ref);
      },
    );
  }
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
