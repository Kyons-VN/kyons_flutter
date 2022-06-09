import 'package:flutter/cupertino.dart';
import 'package:kyons_flutter/src/game_template/ads/ads_controller.dart';
import 'package:kyons_flutter/src/game_template/app_lifecycle/app_lifecycle.dart';
import 'package:kyons_flutter/src/game_template/audio/audio_controller.dart';
import 'package:kyons_flutter/src/game_template/games_services/games_services.dart';
import 'package:kyons_flutter/src/game_template/in_app_purchase/in_app_purchase.dart';
import 'package:kyons_flutter/src/game_template/player_progress/persistence/player_progress_persistence.dart';
import 'package:kyons_flutter/src/game_template/player_progress/player_progress.dart';
import 'package:kyons_flutter/src/game_template/settings/persistence/settings_persistence.dart';
import 'package:kyons_flutter/src/game_template/settings/settings.dart';
import 'package:kyons_flutter/src/game_template/style/palette.dart';
import 'package:provider/provider.dart';

class GameMain extends StatelessWidget {
  final PlayerProgressPersistence playerProgressPersistence;

  final SettingsPersistence settingsPersistence;

  final GamesServicesController? gamesServicesController;

  final InAppPurchaseController? inAppPurchaseController;

  final AdsController? adsController;
  final Widget child;

  const GameMain(
      {super.key,
      required this.playerProgressPersistence,
      required this.settingsPersistence,
      this.gamesServicesController,
      this.inAppPurchaseController,
      this.adsController,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return AppLifecycleObserver(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) {
              var progress = PlayerProgress(playerProgressPersistence);
              progress.getLatestFromStore();
              return progress;
            },
          ),
          Provider<GamesServicesController?>.value(value: gamesServicesController),
          Provider<AdsController?>.value(value: adsController),
          ChangeNotifierProvider<InAppPurchaseController?>.value(value: inAppPurchaseController),
          Provider<SettingsController>(
            lazy: false,
            create: (context) => SettingsController(
              persistence: settingsPersistence,
            )..loadStateFromPersistence(),
          ),
          ProxyProvider2<SettingsController, ValueNotifier<AppLifecycleState>, AudioController>(
            // Ensures that the AudioController is created on startup,
            // and not "only when it's needed", as is default behavior.
            // This way, music starts immediately.
            lazy: false,
            create: (context) => AudioController()..initialize(),
            update: (context, settings, lifecycleNotifier, audio) {
              if (audio == null) throw ArgumentError.notNull();
              audio.attachSettings(settings);
              audio.attachLifecycleNotifier(lifecycleNotifier);
              return audio;
            },
            dispose: (context, audio) => audio.dispose(),
          ),
          Provider(
            create: (context) => Palette(),
          ),
        ],
        child: Builder(builder: (context) {
          return child;
        }),
      ),
    );
  }
}
