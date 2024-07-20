import 'package:flutter/material.dart';
import 'package:soar_task_app/gen/assets.gen.dart';
import 'package:soar_task_app/src/core/extensions/context.dart';
import 'package:soar_task_app/src/core/router/router_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => context.goToReplace(
        RouterNames.rHome,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          Assets.images.imgSplash.path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
