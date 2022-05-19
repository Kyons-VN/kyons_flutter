import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kyons_flutter/src/game/games_services/score.dart';
import 'package:kyons_flutter/src/game/level_selection/level_selection_screen.dart';
import 'package:kyons_flutter/src/game/level_selection/levels.dart';
import 'package:kyons_flutter/src/game/main_menu/main_menu_screen.dart';
import 'package:kyons_flutter/src/game/play_session/play_session_screen.dart';
import 'package:kyons_flutter/src/game/settings/settings_screen.dart';
import 'package:kyons_flutter/src/game/style/my_transition.dart';
import 'package:kyons_flutter/src/game/style/palette.dart';
import 'package:kyons_flutter/src/game/win_game/win_game_screen.dart';
import 'package:provider/provider.dart';

class GameRoute {
  static final _router = GoRouter(
    routes: [
      GoRoute(path: '/game', builder: (context, state) => const MainMenuScreen(key: Key('main menu')), routes: [
        GoRoute(
            path: 'game/play',
            pageBuilder: (context, state) => buildMyTransition(
                  child: const LevelSelectionScreen(key: Key('level selection')),
                  color: context.watch<Palette>().backgroundLevelSelection,
                ),
            routes: [
              GoRoute(
                path: 'session/:level',
                pageBuilder: (context, state) {
                  final levelNumber = int.parse(state.params['level']!);
                  final level = gameLevels.singleWhere((e) => e.number == levelNumber);
                  return buildMyTransition(
                    child: PlaySessionScreen(
                      level,
                      key: const Key('play session'),
                    ),
                    color: context.watch<Palette>().backgroundPlaySession,
                  );
                },
              ),
              GoRoute(
                path: 'game/won',
                pageBuilder: (context, state) {
                  final map = state.extra! as Map<String, dynamic>;
                  final score = map['score'] as Score;

                  return buildMyTransition(
                    child: WinGameScreen(
                      score: score,
                      key: const Key('win game'),
                    ),
                    color: context.watch<Palette>().backgroundPlaySession,
                  );
                },
              )
            ]),
        GoRoute(
          path: 'game/settings',
          builder: (context, state) => const SettingsScreen(key: Key('settings')),
        ),
      ]),
    ],
  );
}
