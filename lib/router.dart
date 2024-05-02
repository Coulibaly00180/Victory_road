import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inazuma_victory/widgets/CustomBottomNavigationBar.dart';
import 'views/home/home_screen.dart';
import 'views/login/login_screen.dart';
import 'views/tournament/tournament_screen.dart';
import 'views/teams/team_screen.dart';
import 'views/profil/profile_screen.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = "/home";

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorTournament = GlobalKey<NavigatorState>(debugLabel: 'shellNavigatorTournament');
  static final _shellNavigatorTeam = GlobalKey<NavigatorState>(debugLabel: 'shellNavigatorTeam');
  static final _shellNavigatorProfile = GlobalKey<NavigatorState>(debugLabel: 'shellNavigatorProfile');
  static final _shellNavigatorGameCharacters = GlobalKey<NavigatorState>(debugLabel: 'shellNavigatorGameCharacters');

  // GoRouter configuration
  static final GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell){
          return CustomBottomNavigationBar(
            navigationShell: navigationShell
          );
        },
        branches: <StatefulShellBranch>[
          // Home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                path: '/home',
                name: 'Home',
                builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
              )
            ]
          ),

          // Tournament
          StatefulShellBranch(
            navigatorKey: _shellNavigatorTournament,
            routes: <RouteBase>[
              GoRoute(
                path: '/tournament',
                name: 'Tournament',
                builder: (BuildContext context, GoRouterState state) => const TournamentScreen(),
              )
            ]
          ),

          // Team
          StatefulShellBranch(
            navigatorKey: _shellNavigatorTeam,
            routes: <RouteBase>[
              GoRoute(
                path: '/team',
                name: 'Team',
                builder: (BuildContext context, GoRouterState state) => const TeamScreen(),
              )
            ]
          ),

          // Profile
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProfile,
            routes: <RouteBase>[
              GoRoute(
                path: '/profile',
                name: 'Profile',
                builder: (BuildContext context, GoRouterState state) => const ProfileScreen(),
              )
            ]
          ),
        ]
      ),

      // Login
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: "/login",
        name: "Login",
        builder: (context, state) => LoginScreen(
          key: state.pageKey,
        ),
      )
    ],
  );
}

/*
final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (_,__) => HomeScreen()
    ),
    GoRoute(
      path: '/login',
      builder: (_,__) => LoginScreen(),
    ),
    GoRoute(
      path: '/tournament',
      builder: (_,__) => TournamentScreen(),
    ),
    GoRoute(
      path: '/team',
      builder: (_,__) => TeamScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (_,__) => ProfileScreen(),
    ),
  ],
  errorPageBuilder: (BuildContext context, GoRouterState state) {
    return MaterialPage(
      child: Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
    );
  }
);
*/