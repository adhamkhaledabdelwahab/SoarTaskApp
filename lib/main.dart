import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/dependency_injection/dependency_init.dart';
import 'package:soar_task_app/src/core/environment/environment_configurations.dart';
import 'package:soar_task_app/src/core/router/router_generator.dart';
import 'package:soar_task_app/src/core/translations/codegen_loader.dart';
import 'package:soar_task_app/src/core/utils/bloc_observer.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/home_bloc.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// init app localizations lib
      await EasyLocalization.ensureInitialized();

      /// init bloc observer
      Bloc.observer = AppBlocObserver();

      /// init environment
      const String environment = String.fromEnvironment(
        'ENVIRONMENT',
        defaultValue: EnvironmentsVariables.development,
      );

      /// init Environments Variables
      EnvironmentsVariables.instance.initConfig(environment);

      /// init Hive ( data storage )
      await Hive.initFlutter();

      /// init get it for all Dependencies
      configureDependencies();
      await getIt.allReady();

      runApp(
        EasyLocalization(
          path: 'assets/translations',
          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          startLocale: const Locale('en'),
          fallbackLocale: const Locale('en'),
          assetLoader: const CodeGenLoader(),
          child: const MyApp(),
        ),
      );
    },
    (error, stackTrace) {
      debugPrint("\x1B[31mGlobal Error: $error\x1B[0m");
      debugPrint("\x1B[31mGlobal StackTrace: $stackTrace\x1B[0m");
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: ScreenUtilInit(
        designSize: const Size(412, 732),
        splitScreenMode: true,
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
            useMaterial3: true,
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          onGenerateRoute: RouterGenerator.onGenerateRoute,
        ),
      ),
    );
  }
}
