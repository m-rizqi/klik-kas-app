import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:klik_kas/config/routes/route_names.dart';

class AppRouter {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter createRouter() {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: AppRoutes.login,
      observers: [ChuckerFlutter.navigatorObserver],
      routes: [
        GoRoute(
          path: AppRoutes.login,
          builder: (context, state) => const Placeholder(),
        ),

      ],
    );
  }
}
