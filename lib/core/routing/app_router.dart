import 'package:flutter/material.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
              body: Center(
            child: Text("No route defined for ${settings.name}"),
          ));
        });
    }
  }
}
