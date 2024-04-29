import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/home/home_screen.dart';
import 'views/login/login_screen.dart';
import 'views/tournament/tournament_screen.dart';
import 'views/teams/team_screen.dart';
import 'views/profil/profile_screen.dart';

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

/*
class AppRouter {
  static GoRouter router() {
    return GoRouter(
      initialLocation: '/',
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) => HomeScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) => LoginScreen(),
        ),
        GoRoute(
          path: '/tournament',
          builder: (BuildContext context, GoRouterState state) => TournamentScreen(),
        ),
        GoRoute(
          path: '/team',
          builder: (BuildContext context, GoRouterState state) => TeamScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) => ProfileScreen(),
        ),
        // Ajouter d'autres routes selon les besoins
      ],
      errorPageBuilder: (BuildContext context, GoRouterState state) {
        return MaterialPage(
          child: Scaffold(body: Center(child: Text('Page not found: ${state.error}'))),
        );
      }
    );
  }
}
*/