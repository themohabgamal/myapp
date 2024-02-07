import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/DI/dependancy_injection.dart';
import 'package:myapp/core/routing/routes.dart';
import 'package:myapp/features/home/ui/home_screen.dart';
import 'package:myapp/features/login/ui/login_screen.dart';
import 'package:myapp/features/signup/logic/cubit/signup_cubit.dart';
import 'package:myapp/features/signup/ui/signup_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.login:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.signup:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignupScreen(),
                ));
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
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
