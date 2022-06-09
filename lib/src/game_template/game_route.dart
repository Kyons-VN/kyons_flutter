import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/src/game_template/games_services/score.dart';
import 'package:kyons_flutter/src/game_template/level_selection/level_selection_screen.dart';
import 'package:kyons_flutter/src/game_template/level_selection/levels.dart';
import 'package:kyons_flutter/src/game_template/main_menu/main_menu_screen.dart';
import 'package:kyons_flutter/src/game_template/play_session/play_session_screen.dart';
import 'package:kyons_flutter/src/game_template/settings/settings_screen.dart';
import 'package:kyons_flutter/src/game_template/style/my_transition.dart';
import 'package:kyons_flutter/src/game_template/style/palette.dart';
import 'package:kyons_flutter/src/game_template/win_game/win_game_screen.dart';
import 'package:provider/provider.dart';

class GamePaths {
  static const play = '/game/play';
  static const session = '/game/play/session';
  static const won = '/game/play/won';
  static const settings = '/game/settings';
}

class GameRoute {
  GoRoute getGameRoute(String gameRoot, String? Function(GoRouterState state, WidgetRef ref) redirect, WidgetRef ref) {
    return GoRoute(
      path: '/game',
      builder: (context, state) => const MainMenuScreen(key: Key('main menu')),
      redirect: (state) => redirect(state, ref),
      routes: [
        GoRoute(
            path: 'play',
            pageBuilder: (context, state) => buildMyTransition(
                  child: const LevelSelectionScreen(key: Key('level selection')),
                  color: context.watch<Palette>().backgroundLevelSelection,
                ),
            redirect: (state) => redirect(state, ref),
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
                redirect: (state) => redirect(state, ref),
              ),
              GoRoute(
                path: 'won',
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
                redirect: (state) => redirect(state, ref),
              )
            ]),
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsScreen(key: Key('settings')),
          redirect: (state) => redirect(state, ref),
        ),
      ],
    );
  }
}
