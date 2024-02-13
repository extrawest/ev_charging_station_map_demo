import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:samoilenko_maps_app/features/charging/screens/charging_screen.dart';
import 'package:samoilenko_maps_app/features/favorite/screens/favorite_screen.dart';
import 'package:samoilenko_maps_app/features/profile/screens/profile_screen.dart';
import 'package:samoilenko_maps_app/features/stations_search/screens/stations_search_screen.dart';

import '../features/stations/screens/stations_screen.dart';
import '../features/theme/theme_info.dart';
import '../features/wallet/screens/wallet_screen.dart';
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
const String favoritePageRoute = '/favorite';
const String chargingPageRoute = '/charging';
const String walletPageRoute = '/wallet';
const String profilePageRoute = '/profile';
const String stationSearchPageRoute = 'stations_search';

const double _iconHeight = 28.0;
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorStationsKey =
    GlobalKey<NavigatorState>(debugLabel: 'stations');
final _shellNavigatorFavoriteKey =
    GlobalKey<NavigatorState>(debugLabel: 'favorite');
final _shellNavigatorChargingKey =
    GlobalKey<NavigatorState>(debugLabel: 'charging');
final _shellNavigatorWalletKey =
    GlobalKey<NavigatorState>(debugLabel: 'wallet');
final _shellNavigatorProfileKey =
    GlobalKey<NavigatorState>(debugLabel: 'profile');

// the one and only GoRouter instance
final goRouter = GoRouter(
  initialLocation: homeRoute,
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // the UI shell
        return ScaffoldWithNestedNavigation(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorStationsKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: homeRoute,
              pageBuilder: (context, state) => _TransitionPage(
                key: state.pageKey,
                child: const StationsScreen(),
              ),
              routes: [
                // child route
                GoRoute(
                  path: stationSearchPageRoute,
                  pageBuilder: (context, state) {
                    return _TransitionPage(
                      key: state.pageKey,
                      child: const StationsSearchScreen(),
                    );
                  },
                  routes: [
                    // child route
                    GoRoute(
                      path: 'pages',
                      builder: (context, state) => const PageWidget(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        // StatefulShellBranch(
        //   routes: [
        //     GoRoute(
        //       path: stationSearchPageRoute,
        //       pageBuilder: (context, state) {
        //         final Map<String, Object?> extraData =
        //             state.extra! as Map<String, Object?>;
        //         final Completer<GoogleMapController>? mapController =
        //             extraData['mapController']
        //                 as Completer<GoogleMapController>?;
        //         final List<Station>? stations =
        //             extraData['stations'] as List<Station>?;
        //
        //         return _TransitionPage(
        //           key: state.pageKey,
        //           child: StationsSearchScreen(
        //             mapController: mapController,
        //             stations: stations,
        //           ),
        //         );
        //       },
        //       routes: [
        //         // child route
        //         GoRoute(
        //           path: 'pages',
        //           builder: (context, state) => const PageWidget(),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFavoriteKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: favoritePageRoute,
              pageBuilder: (context, state) => _TransitionPage(
                key: state.pageKey,
                child: const FavoriteScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorChargingKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: chargingPageRoute,
              pageBuilder: (context, state) => _TransitionPage(
                key: state.pageKey,
                child: const ChargingScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorWalletKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: walletPageRoute,
              pageBuilder: (context, state) => _TransitionPage(
                key: state.pageKey,
                child: const WalletScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          routes: [
            // top route inside branch
            GoRoute(
              path: profilePageRoute,
              pageBuilder: (context, state) => _TransitionPage(
                key: state.pageKey,
                child: const ProfileScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.

      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        backgroundColor: white,
        elevation: 0,
        indicatorColor: greenAccent,
        indicatorShape: const CustomShapeBorder(),
        destinations: const [
          NavigationDestination(
            label: '',
            icon: Icon(
              Icons.location_on_outlined,
              size: _iconHeight,
              color: greyIcon,
            ),
            selectedIcon: Icon(
              Icons.location_on,
              size: _iconHeight,
              color: white,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: Icon(
              Icons.favorite_outline_outlined,
              size: _iconHeight,
              color: greyIcon,
            ),
            selectedIcon: Icon(
              Icons.favorite_outlined,
              size: _iconHeight,
              color: white,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: Icon(
              Icons.bolt_outlined,
              size: _iconHeight,
              color: greyIcon,
            ),
            selectedIcon: Icon(
              Icons.bolt_outlined,
              size: _iconHeight,
              color: white,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              size: _iconHeight,
              color: greyIcon,
            ),
            selectedIcon: Icon(
              Icons.account_balance_wallet,
              size: _iconHeight,
              color: white,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: Icon(
              Icons.manage_accounts_outlined,
              size: _iconHeight,
              color: greyIcon,
            ),
            selectedIcon: Icon(
              Icons.manage_accounts_rounded,
              size: _iconHeight,
              color: white,
            ),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}

class _TransitionPage extends CustomTransitionPage<dynamic> {
  _TransitionPage({super.key, required super.child})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
          // create your own or use an existing one
          // ScaleTransition(scale: animation, child: child),
        );
}

class CustomShapeBorder extends ShapeBorder {
  final double borderRadius;

  const CustomShapeBorder({this.borderRadius = 12});

  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(10.0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect.deflate(borderRadius));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(borderRadius)));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    // You can add custom painting logic here if needed
  }

  @override
  ShapeBorder scale(double t) {
    return CustomShapeBorder(borderRadius: borderRadius * t);
  }
}
