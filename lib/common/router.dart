import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:samoilenko_maps_app/features/posts/posts.dart';

import '../features/stations/screens/stations_screen.dart';
import 'screens/screens.dart';
import 'widgets/widgets.dart';

/* * * * * * * * * * * *
*
* /home
* /pages
*     /pages/1
*     /pages/2
*     ...
*     /pages/test
*
* * * * * * * * * * * */
const String homeRoute = '/';
const String pagesRoute = '/pages';
const String postsRoute = '/posts';
const String pagesDynamicRoute = ':id';
const String firstPageRoute = '/pages/1';
const String stationsPageRoute = '/stations';

final goRouter = GoRouter(
  initialLocation: homeRoute,
  errorBuilder: (context, state) => ErrorScreen(state.error),
  routes: [
    GoRoute(
      path: homeRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const HomeScreen(),
      ),
    ),
    GoRoute(
      path: postsRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const PostsScreen(),
      ),
      routes: <RouteBase>[
        GoRoute(
          path: pagesDynamicRoute,
          // builder: (BuildContext context, GoRouterState state) {
          //   return const PageWidget();
          // },
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
          ),
        ),
      ],
    ),
    GoRoute(
      path: pagesRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const PagesListScreen(),
      ),
      routes: <RouteBase>[
        GoRoute(
          path: pagesDynamicRoute,
          // builder: (BuildContext context, GoRouterState state) {
          //   return const PageWidget();
          // },
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
          ),
        ),
      ],
    ),
    GoRoute(
      path: stationsPageRoute,
      pageBuilder: (context, state) => _TransitionPage(
        key: state.pageKey,
        child: const StationsScreen(),
      ),
      routes: <RouteBase>[
        GoRoute(
          path: pagesDynamicRoute,
          pageBuilder: (context, state) => _TransitionPage(
            key: state.pageKey,
            child: const PageWidget(),
          ),
        ),
      ],
    ),
  ],
);

class _TransitionPage extends CustomTransitionPage<dynamic> {
  _TransitionPage({super.key, required super.child})
      : super(
          transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
          // create your own or use an existing one
          // ScaleTransition(scale: animation, child: child),
        );
}
