import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workout_diary/core/router/route_names.dart';
import 'package:workout_diary/core/router/scaffold_with_bottom_nav.dart';
import 'package:workout_diary/features/history/screens/history_screen.dart';
import 'package:workout_diary/features/profile/screens/profile_screen.dart';
import 'package:workout_diary/features/start/screens/start_screen.dart';
import 'package:workout_diary/features/workout/screens/edit_workout_screen.dart';
import 'package:workout_diary/features/workout/screens/workout_detail_screen.dart';
import 'package:workout_diary/features/workout/screens/workouts_screen.dart';
import '../../features/workout/data/workout.dart';
import '../../features/workout/screens/create_workout_screen.dart';

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

      GoRoute(
        path: '/workouts/create',
        builder: (context, state) => const CreateWorkoutScreen(),
      ),
      GoRoute(
        path: '/workouts/:id/edit',
        builder: (context, state) {
          final workout = state.extra as Workout;
          return EditWorkoutScreen(workout: workout);
        },
      ),
      GoRoute(
        path: '/workouts/:id',
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id']!);
          return WorkoutDetailScreen(workoutId: id);
        },
      ),
      GoRoute(
        path: '/workouts/create',
        builder: (context, state) => const CreateWorkoutScreen(),
      ),
    ],
  );
}