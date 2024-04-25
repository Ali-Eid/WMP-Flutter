import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wmp_project/domain/models/artis_model/artist_model.dart';
import 'package:wmp_project/domain/models/song_models/song_model.dart';
import 'package:wmp_project/presentations/features/artist/views/artist_details_view.dart';
import 'package:wmp_project/presentations/features/artist/views/artist_view.dart';
import 'package:wmp_project/presentations/features/auth/views/login_view.dart';
import 'package:wmp_project/presentations/features/auth/views/register_view.dart';
import 'package:wmp_project/presentations/features/main/views/main_view.dart';
import 'package:wmp_project/presentations/features/song/views/song_details_view.dart';
import 'package:wmp_project/presentations/features/song/views/song_view.dart';

import '../features/splash/views/splash_view.dart';

class RoutesNames {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = 'register';
  static const String homeRoute = '/home';
  static const String artistRoute = '/artist';
  static const String artistDetailsRoute = 'artistDetails';

  static const String songRoute = '/song';
  static const String songDetailsRoute = 'songDetails';
}

class RoutesPaths {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = 'register';
  static const String homeRoute = '/home';
  static const String artistRoute = '/artist';
  static const String artistDetailsRoute = 'artistDetails';

  static const String songRoute = '/song';
  static const String songDetailsRoute = 'songDetails';
}

class NavigationKeys {
  static final shellNavigatorKey = GlobalKey<NavigatorState>();
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
}

class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: NavigationKeys.rootNavigatorKey,
    initialLocation: RoutesPaths.splashRoute,
    routes: [
      GoRoute(
        name: RoutesNames.splashRoute,
        path: RoutesPaths.splashRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: RoutesPaths.loginRoute,
          name: RoutesNames.loginRoute,
          builder: (context, state) => const LoginView(),
          routes: [
            GoRoute(
              path: RoutesPaths.registerRoute,
              name: RoutesNames.registerRoute,
              builder: (context, state) => const RegisterView(),
            ),
          ]),
      // GoRoute(
      //   path: RoutesPaths.homeRoute,
      //   name: RoutesNames.homeRoute,
      //   builder: (context, state) => const MainView(),
      // ),
      ShellRoute(
          navigatorKey: NavigationKeys.shellNavigatorKey,
          pageBuilder: (context, state, child) {
            return CustomTransitionPage(
              transitionDuration: const Duration(milliseconds: 1140),
              child: MainView(child: child),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0.0, -1.0),
                    end: const Offset(0.0, 0.0),
                  ).animate(
                    CurvedAnimation(
                      parent: animation,
                      curve: const Cubic(0.74, 0.01, 0.01, 0.98),
                    ),
                  ),
                  child: child,
                );
              },
            );
          },
          routes: [
            GoRoute(
                name: RoutesNames.artistRoute,
                path: RoutesPaths.artistRoute,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                    key: state.pageKey,
                    child: const ArtistView(),
                  );
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: NavigationKeys.rootNavigatorKey,
                    name: RoutesNames.artistDetailsRoute,
                    path: RoutesPaths.artistDetailsRoute,
                    builder: (context, state) {
                      return ArtistDetailsView(
                        model: state.extra as ArtistModel,
                      );
                    },
                  ),
                ]),
            GoRoute(
                name: RoutesNames.songRoute,
                path: RoutesPaths.songRoute,
                pageBuilder: (context, state) {
                  return NoTransitionPage(
                    key: state.pageKey,
                    child: const SongsView(),
                  );
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: NavigationKeys.rootNavigatorKey,
                    name: RoutesNames.songDetailsRoute,
                    path: RoutesPaths.songDetailsRoute,
                    builder: (context, state) {
                      return SongDetailsView(
                        model: state.extra as SongModel,
                      );
                    },
                  ),
                ]),
          ]),
    ],
  );
}
