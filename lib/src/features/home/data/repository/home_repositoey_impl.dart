import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/network/error_model/error_model.dart';
import 'package:soar_task_app/src/core/translations/locale_keys.dart';
import 'package:soar_task_app/src/features/home/data/data_source/local/local_data_source.dart';
import 'package:soar_task_app/src/features/home/data/data_source/remote/remote_data_source.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_data_model/base_response_data_model.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_model/base_response_model.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/character_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/comic_model.dart';
import 'package:soar_task_app/src/features/home/data/models/event_model/event_model.dart';
import 'package:soar_task_app/src/features/home/data/models/series_model/series_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_model/story_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

  HomeRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource,
  );

  @override
  Future<DataState<BaseResponseDataEntity<CharacterEntity>>> getCharacters({
    required CharactersUseCaseParams params,
  }) async {
    bool localExists = false;
    final local = await _localDataSource.getCharacters();
    if (local is DataSuccess && local.data != null) {
      localExists = true;
      if (params.offset <= local.data!.offset) {
        return DataSuccess(local.data!);
      }
    } else if (local is DataFailed) {
      return _error<BaseResponseDataEntity<CharacterEntity>>(local.error);
    }

    final DataState<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>
        modelData = await _remoteDataSource.getCharacters(
      params: params,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return _error<BaseResponseDataEntity<CharacterEntity>>(modelData.error);
    }

    var remoteResult = modelData.data!.data!.toEntity(
      (p0) => p0.toEntity,
      null,
    );
    if (localExists) {
      remoteResult = remoteResult.copyWith(
        results: [...local.data!.results, ...remoteResult.results],
      );
    }
    await _localDataSource.setCharacters(
      characters: remoteResult,
    );
    await _localDataSource.setCharactersParams(params: params);

    return DataSuccess(
      modelData.data!.data!.toEntity<CharacterEntity>(
        (p0) => p0.toEntity,
        null,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<ComicEntity>>> getCharacterComics({
    required num characterId,
  }) async {
    final local = await _localDataSource.getCharacterComics(
      characterId: characterId,
    );
    if (local is DataSuccess && local.data != null) {
      return DataSuccess(local.data!);
    } else if (local is DataFailed) {
      return _error<BaseResponseDataEntity<ComicEntity>>(local.error);
    }

    final DataState<BaseResponseModel<BaseResponseDataModel<ComicModel>>>
        modelData = await _remoteDataSource.getCharacterComics(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return _error<BaseResponseDataEntity<ComicEntity>>(modelData.error);
    }

    final remoteResult = modelData.data!.data!.toEntity(
      (p0) => p0.toEntity,
      characterId,
    );
    await _localDataSource.setCharacterComics(
      baseResponseDataEntity: remoteResult,
    );

    return DataSuccess(
      remoteResult,
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<EventEntity>>> getCharacterEvents({
    required num characterId,
  }) async {
    final local = await _localDataSource.getCharacterEvents(
      characterId: characterId,
    );
    if (local is DataSuccess && local.data != null) {
      return DataSuccess(local.data!);
    } else if (local is DataFailed) {
      return _error<BaseResponseDataEntity<EventEntity>>(local.error);
    }

    final DataState<BaseResponseModel<BaseResponseDataModel<EventModel>>>
        modelData = await _remoteDataSource.getCharacterEvents(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return _error<BaseResponseDataEntity<EventEntity>>(modelData.error);
    }

    final remoteResult = modelData.data!.data!.toEntity(
      (p0) => p0.toEntity,
      characterId,
    );
    await _localDataSource.setCharacterEvents(
      baseResponseDataEntity: remoteResult,
    );

    return DataSuccess(
      remoteResult,
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<SeriesEntity>>> getCharacterSeries({
    required num characterId,
  }) async {
    final local = await _localDataSource.getCharacterSeries(
      characterId: characterId,
    );
    if (local is DataSuccess && local.data != null) {
      return DataSuccess(local.data!);
    } else if (local is DataFailed) {
      return _error<BaseResponseDataEntity<SeriesEntity>>(local.error);
    }

    final DataState<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>
        modelData = await _remoteDataSource.getCharacterSeries(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return _error<BaseResponseDataEntity<SeriesEntity>>(modelData.error);
    }

    final remoteResult = modelData.data!.data!.toEntity(
      (p0) => p0.toEntity,
      characterId,
    );
    await _localDataSource.setCharacterSeries(
      baseResponseDataEntity: remoteResult,
    );

    return DataSuccess(
      remoteResult,
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<StoryEntity>>> getCharacterStories({
    required num characterId,
  }) async {
    final local = await _localDataSource.getCharacterStories(
      characterId: characterId,
    );
    if (local is DataSuccess && local.data != null) {
      return DataSuccess(local.data!);
    } else if (local is DataFailed) {
      return _error<BaseResponseDataEntity<StoryEntity>>(local.error);
    }

    final DataState<BaseResponseModel<BaseResponseDataModel<StoryModel>>>
        modelData = await _remoteDataSource.getCharacterStories(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return _error<BaseResponseDataEntity<StoryEntity>>(modelData.error);
    }

    final remoteResult = modelData.data!.data!.toEntity(
      (p0) => p0.toEntity,
      characterId,
    );
    await _localDataSource.setCharacterStories(
      baseResponseDataEntity: remoteResult,
    );

    return DataSuccess(
      remoteResult,
    );
  }

  @override
  Future<DataState<CharactersUseCaseParams?>> getCharactersParams() async {
    final result = await _localDataSource.getCharactersParams();
    if (result is DataFailed) {
      return _error<CharactersUseCaseParams?>(result.error);
    }
    return result;
  }

  DataFailed<T> _error<T>(ErrorModel? error) => DataFailed<T>(
        error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
}
