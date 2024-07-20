// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/data_source/home_data_source.dart' as _i6;
import '../../features/home/data/data_source/home_data_source_impl.dart' as _i7;
import '../../features/home/data/remote_service/remote_service.dart' as _i4;
import '../../features/home/data/remote_service/remote_service_impl.dart'
    as _i5;
import '../../features/home/data/repository/home_repositoey_impl.dart' as _i9;
import '../../features/home/domain/repository/home_repository.dart' as _i8;
import '../../features/home/domain/use_cases/get_character_comics/get_character_comics.dart'
    as _i10;
import '../../features/home/domain/use_cases/get_character_events/get_character_events.dart'
    as _i11;
import '../../features/home/domain/use_cases/get_character_series/get_character_series.dart'
    as _i12;
import '../../features/home/domain/use_cases/get_character_stories/get_character_stories.dart'
    as _i13;
import '../../features/home/domain/use_cases/get_character_use_case/get_character_use_case.dart'
    as _i14;
import 'register_module.dart' as _i15;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i3.Dio>(
    () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')),
    instanceName: 'Dio',
  );
  gh.factory<_i4.RemoteService>(
      () => _i5.RemoteServiceImpl(gh<_i3.Dio>(instanceName: 'Dio')));
  gh.factory<_i6.HomeDataSource>(
      () => _i7.HomeDataSourceImpl(gh<_i4.RemoteService>()));
  gh.factory<_i8.HomeRepository>(
      () => _i9.HomeRepositoryImpl(gh<_i6.HomeDataSource>()));
  gh.factory<_i10.GetCharacterComicsUseCase>(
      () => _i10.GetCharacterComicsUseCase(gh<_i8.HomeRepository>()));
  gh.factory<_i11.GetCharacterEventsUseCase>(
      () => _i11.GetCharacterEventsUseCase(gh<_i8.HomeRepository>()));
  gh.factory<_i12.GetCharacterSeriesUseCase>(
      () => _i12.GetCharacterSeriesUseCase(gh<_i8.HomeRepository>()));
  gh.factory<_i13.GetCharacterStoriesUseCase>(
      () => _i13.GetCharacterStoriesUseCase(gh<_i8.HomeRepository>()));
  gh.factory<_i14.GetCharactersUseCase>(
      () => _i14.GetCharactersUseCase(gh<_i8.HomeRepository>()));
  return getIt;
}

class _$RegisterModule extends _i15.RegisterModule {}
