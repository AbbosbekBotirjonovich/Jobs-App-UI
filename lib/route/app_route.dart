import 'package:flutter/material.dart';
import 'package:jobs_ui/route/app_route_name.dart';
import 'package:jobs_ui/screens/detail_screen.dart';

import '../screens/get_started_screen.dart';
import '../screens/home_screen.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.getStarted:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const GetStartedScreen(),
        );

      case AppRouteName.homeScreen:
        return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => const HomeScreen(),
            transitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });

      case AppRouteName.detail:
        return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => const DetailScreen(),
            transitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder: (_, animation, __, child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
                        .animate(animation),
                child: child,
              );
            });
    }
    return null;
  }
}
