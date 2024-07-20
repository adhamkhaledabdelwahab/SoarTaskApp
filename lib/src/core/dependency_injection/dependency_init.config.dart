// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/data/data_source/local/local_data_source.dart'
    as _i5;
import '../../features/home/data/data_source/local/local_data_source_impl.dart'
    as _i6;
import '../../features/home/data/data_source/remote/remote_data_source.dart'
    as _i9;
import '../../features/home/data/data_source/remote/remote_data_source_impl.dart'
    as _i10;
import '../../features/home/data/local_service/local_service.dart' as _i3;
import '../../features/home/data/remote_service/remote_service.dart' as _i7;
import '../../features/home/data/remote_service/remote_service_impl.dart'
    as _i8;
import '../../features/home/data/repository/home_repositoey_impl.dart' as _i12;
import '../../features/home/domain/repository/home_repository.dart' as _i11;
import '../../features/home/domain/use_cases/get_character_comics/get_character_comics.dart'
    as _i13;
import '../../features/home/domain/use_cases/get_character_events/get_character_events.dart'
    as _i14;
import '../../features/home/domain/use_cases/get_character_series/get_character_series.dart'
    as _i15;
import '../../features/home/domain/use_cases/get_character_stories/get_character_stories.dart'
    as _i16;
import '../../features/home/domain/use_cases/get_character_use_case/get_character_use_case.dart'
    as _i17;
import '../../features/home/domain/use_cases/get_characters_params_use_case/get_characters_params_use_case.dart'
    as _i18;
import 'register_module.dart' as _i19;

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
  gh.factory<_i3.LocalService>(() => _i3.LocalService());
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i4.Dio>(
    () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')),
    instanceName: 'Dio',
  );
  gh.factory<_i5.LocalDataSource>(
      () => _i6.LocalDataSourceImpl(gh<_i3.LocalService>()));
  gh.factory<_i7.RemoteService>(
      () => _i8.RemoteServiceImpl(gh<_i4.Dio>(instanceName: 'Dio')));
  gh.factory<_i9.RemoteDataSource>(
      () => _i10.RemoteDataSourceImpl(gh<_i7.RemoteService>()));
  gh.factory<_i11.HomeRepository>(() => _i12.HomeRepositoryImpl(
        gh<_i9.RemoteDataSource>(),
        gh<_i5.LocalDataSource>(),
      ));
  gh.factory<_i13.GetCharacterComicsUseCase>(
      () => _i13.GetCharacterComicsUseCase(gh<_i11.HomeRepository>()));
  gh.factory<_i14.GetCharacterEventsUseCase>(
      () => _i14.GetCharacterEventsUseCase(gh<_i11.HomeRepository>()));
  gh.factory<_i15.GetCharacterSeriesUseCase>(
      () => _i15.GetCharacterSeriesUseCase(gh<_i11.HomeRepository>()));
  gh.factory<_i16.GetCharacterStoriesUseCase>(
      () => _i16.GetCharacterStoriesUseCase(gh<_i11.HomeRepository>()));
  gh.factory<_i17.GetCharactersUseCase>(
      () => _i17.GetCharactersUseCase(gh<_i11.HomeRepository>()));
  gh.factory<_i18.GetCharactersParamsUseCase>(
      () => _i18.GetCharactersParamsUseCase(gh<_i11.HomeRepository>()));
  return getIt;
}

class _$RegisterModule extends _i19.RegisterModule {}
