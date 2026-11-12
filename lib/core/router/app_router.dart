import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/router/route_names.dart';
import 'package:workout_diary/core/router/scaffold_with_bottom_nav.dart';
import 'package:workout_diary/features/history/screens/history_screen.dart';
import 'package:workout_diary/features/profile/screens/profile_screen.dart';
import 'package:workout_diary/features/start/screens/start_screen.dart';
import 'package:workout_diary/features/workout/screens/workouts_screen.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: RouteNames.workouts,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            ScaffoldWithBottomNav(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.workouts,
              builder: (context, state) => const WorkoutsScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.start,
              builder: (context, state) => const StartScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.history,
              builder: (context, state) => const HistoryScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RouteNames.profile,
              builder: (context, state) => const ProfileScreen(),
            ),
          ]),
        ],
      ),
    ],
  );
}