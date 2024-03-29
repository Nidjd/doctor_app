import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/features/login/ui/login_screen.dart';
import 'package:doctor_app/features/on_boarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Not defiend'),
            ),
          ),
        );
    }
  }
}
