import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanda/general/presentation/screens/onboarding_screen.dart';
import 'package:tanda/general/presentation/screens/splash_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      name: "splashScreen",
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: "/onBoarding",
      name: "onBoarding",
      builder: (context, state) {
        return const OnboardingScreen();
      },
    )
  ],
);
