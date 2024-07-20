import 'package:flutter/material.dart';
import 'package:soar_task_app/src/core/router/router_names.dart';
import 'package:soar_task_app/src/features/home/presentation/screens/character_details_screen.dart';
import 'package:soar_task_app/src/features/home/presentation/screens/home_screen.dart';
import 'package:soar_task_app/src/features/splash/presentation/screens/splash_screen.dart';

abstract class RouterGenerator {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterNames.rSplash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case RouterNames.rHome:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case RouterNames.rCharacterDetails:
        return MaterialPageRoute(
          builder: (_) => const CharacterDetailsScreen(),
        );
      default:
        return null;
    }
  }
}
