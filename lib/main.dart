import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/app_string_constants.dart';
import 'package:soar_task_app/src/core/dependency_injection/dependency_init.dart';
import 'package:soar_task_app/src/core/environment/environment_configurations.dart';
import 'package:soar_task_app/src/core/router/router_generator.dart';
import 'package:soar_task_app/src/core/translations/codegen_loader.dart';
import 'package:soar_task_app/src/core/utils/bloc_observer.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity_character_adapter.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity_comic_adapter.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity_event_adapter.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity_series_adapter.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity_story_adapter.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_entity/comic_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_item_entity/comic_resource_item_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_item_entity/creators_item_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/date_entity/date_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/next_entity/next_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/original_issue_entity/original_issue_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/price_entity/price_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_resource_entity/series_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_item_entity/story_resource_item_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/text_object_entity/text_object_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/bloc_enums.dart';
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

      /// register hive adapters
      Hive.registerAdapter(BaseResponseDataEntityCharacterAdapter());
      Hive.registerAdapter(BaseResponseDataEntityComicAdapter());
      Hive.registerAdapter(BaseResponseDataEntityEventAdapter());
      Hive.registerAdapter(BaseResponseDataEntitySeriesAdapter());
      Hive.registerAdapter(BaseResponseDataEntityStoryAdapter());
      Hive.registerAdapter(CharacterEntityAdapter());
      Hive.registerAdapter(CharacterResourceEntityAdapter());
      Hive.registerAdapter(ComicEntityAdapter());
      Hive.registerAdapter(ComicResourceEntityAdapter());
      Hive.registerAdapter(ComicResourceItemEntityAdapter());
      Hive.registerAdapter(CreatorsEntityAdapter());
      Hive.registerAdapter(CreatorsItemEntityAdapter());
      Hive.registerAdapter(DateEntityAdapter());
      Hive.registerAdapter(EventEntityAdapter());
      Hive.registerAdapter(NextEntityAdapter());
      Hive.registerAdapter(OriginalIssueEntityAdapter());
      Hive.registerAdapter(PriceEntityAdapter());
      Hive.registerAdapter(SeriesEntityAdapter());
      Hive.registerAdapter(SeriesResourceEntityAdapter());
      Hive.registerAdapter(StoryEntityAdapter());
      Hive.registerAdapter(StoryResourceEntityAdapter());
      Hive.registerAdapter(StoryResourceItemEntityAdapter());
      Hive.registerAdapter(TextObjectEntityAdapter());
      Hive.registerAdapter(ThumbnailEntityAdapter());
      Hive.registerAdapter(UrlEntityAdapter());
      Hive.registerAdapter(CharactersUseCaseParamsAdapter());

      /// open hive boxes
      await Future.wait(
        [
          Hive.openBox(AppStringConstants.appHiveBoxName),
          Hive.openBox(AppStringConstants.comicsHiveBoxName),
          Hive.openBox(AppStringConstants.eventsHiveBoxName),
          Hive.openBox(AppStringConstants.seriesHiveBoxName),
          Hive.openBox(AppStringConstants.storiesHiveBoxName),
        ],
      );

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
      create: (context) => HomeBloc()
        ..add(
          const HomeEvent(
            action: HomeBlocActions.getCharactersParams,
          ),
        ),
      lazy: false,
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
