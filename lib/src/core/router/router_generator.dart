import 'package:flutter/material.dart';
import 'package:soar_task_app/src/core/router/router_names.dart';
import 'package:soar_task_app/src/features/splash/presentation/screens/splash_screen.dart';

abstract class RouterGenerator {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterNames.rSplash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      default:
        return null;
    }
  }
}
