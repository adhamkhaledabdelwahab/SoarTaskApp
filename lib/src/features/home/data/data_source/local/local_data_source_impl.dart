import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/constants/app_string_constants.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/network/error_model/error_model.dart';
import 'package:soar_task_app/src/core/utils/log_util.dart';
import 'package:soar_task_app/src/features/home/data/data_source/local/local_data_source.dart';
import 'package:soar_task_app/src/features/home/data/local_service/local_service.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl extends LocalDataSource {
  final LocalService _localService;

  LocalDataSourceImpl(this._localService);

  @override
  Future<DataState<bool>> clearCharacterComics({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<ComicEntity>>(
        boxName: AppStringConstants.comicsHiveBoxName,
      );
      data.removeWhere((element) => element.characterId == characterId);
      await _localService.clearData(
        boxName: AppStringConstants.comicsHiveBoxName,
      );
      await _localService.saveData<List<BaseResponseDataEntity<ComicEntity>>>(
        boxName: AppStringConstants.comicsHiveBoxName,
        data: data,
      );
      return const DataSuccess(true);
    } catch (e) {
      logError("clearCharacterComics Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> clearCharacterEvents({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<ComicEntity>>(
        boxName: AppStringConstants.eventsHiveBoxName,
      );
      data.removeWhere((element) => element.characterId == characterId);
      await _localService.clearData(
        boxName: AppStringConstants.eventsHiveBoxName,
      );
      await _localService.saveData<List<BaseResponseDataEntity<ComicEntity>>>(
        boxName: AppStringConstants.eventsHiveBoxName,
        data: data,
      );
      return const DataSuccess(true);
    } catch (e) {
      logError("clearCharacterEvents Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> clearCharacterSeries({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<ComicEntity>>(
        boxName: AppStringConstants.seriesHiveBoxName,
      );
      data.removeWhere((element) => element.characterId == characterId);
      await _localService.clearData(
        boxName: AppStringConstants.seriesHiveBoxName,
      );
      await _localService.saveData<List<BaseResponseDataEntity<ComicEntity>>>(
        boxName: AppStringConstants.seriesHiveBoxName,
        data: data,
      );
      return const DataSuccess(true);
    } catch (e) {
      logError("clearCharacterSeries Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> clearCharacterStories({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<ComicEntity>>(
        boxName: AppStringConstants.storiesHiveBoxName,
      );
      data.removeWhere((element) => element.characterId == characterId);
      await _localService.clearData(
        boxName: AppStringConstants.storiesHiveBoxName,
      );
      await _localService.saveData<List<BaseResponseDataEntity<ComicEntity>>>(
        boxName: AppStringConstants.storiesHiveBoxName,
        data: data,
      );
      return const DataSuccess(true);
    } catch (e) {
      logError("clearCharacterStories Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> clearCharacters() async {
    try {
      await _localService.removeDataByKey(
        boxName: AppStringConstants.appHiveBoxName,
        key: AppStringConstants.charactersHiveKeyName,
      );
      return const DataSuccess(true);
    } catch (e) {
      logError("clearCharacters Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> clearCharactersParams() async {
    try {
      await _localService.removeDataByKey(
        boxName: AppStringConstants.appHiveBoxName,
        key: AppStringConstants.charactersParamsHiveKeyName,
      );
      return const DataSuccess(true);
    } catch (e) {
      logError("clearCharactersParams Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<BaseResponseDataEntity<ComicEntity>?>> getCharacterComics({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<ComicEntity>>(
        boxName: AppStringConstants.comicsHiveBoxName,
      );
      final result =
          data.where((element) => element.characterId == characterId);
      return DataSuccess(
        result.isNotEmpty ? result.first : null,
      );
    } catch (e) {
      logError("getCharacterComics Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<BaseResponseDataEntity<EventEntity>?>> getCharacterEvents({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<EventEntity>>(
        boxName: AppStringConstants.eventsHiveBoxName,
      );
      final result =
          data.where((element) => element.characterId == characterId);
      return DataSuccess(
        result.isNotEmpty ? result.first : null,
      );
    } catch (e) {
      logError("getCharacterEvents Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<BaseResponseDataEntity<SeriesEntity>?>> getCharacterSeries({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<SeriesEntity>>(
        boxName: AppStringConstants.seriesHiveBoxName,
      );
      final result =
          data.where((element) => element.characterId == characterId);
      return DataSuccess(
        result.isNotEmpty ? result.first : null,
      );
    } catch (e) {
      logError("getCharacterSeries Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<BaseResponseDataEntity<StoryEntity>?>> getCharacterStories({
    required num characterId,
  }) async {
    try {
      final data =
          await _localService.getAll<BaseResponseDataEntity<StoryEntity>>(
        boxName: AppStringConstants.storiesHiveBoxName,
      );
      final result =
          data.where((element) => element.characterId == characterId);
      return DataSuccess(
        result.isNotEmpty ? result.first : null,
      );
    } catch (e) {
      logError("getCharacterStories Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<BaseResponseDataEntity<CharacterEntity>?>>
      getCharacters() async {
    try {
      final data = await _localService
          .getDataByKey<BaseResponseDataEntity<CharacterEntity>?>(
        boxName: AppStringConstants.appHiveBoxName,
        key: AppStringConstants.charactersHiveKeyName,
      );
      return DataSuccess(
        data,
      );
    } catch (e) {
      logError("getCharacters Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<CharactersUseCaseParams?>> getCharactersParams() async {
    try {
      final data = await _localService.getDataByKey<CharactersUseCaseParams?>(
        boxName: AppStringConstants.appHiveBoxName,
        key: AppStringConstants.charactersParamsHiveKeyName,
      );
      return DataSuccess(
        data,
      );
    } catch (e) {
      logError("getCharactersParams Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> setCharacterComics({
    required BaseResponseDataEntity<ComicEntity> baseResponseDataEntity,
  }) async {
    try {
      await _localService.saveData<BaseResponseDataEntity<ComicEntity>>(
        boxName: AppStringConstants.comicsHiveBoxName,
        data: baseResponseDataEntity,
      );
      return const DataSuccess(
        true,
      );
    } catch (e) {
      logError("setCharacterComics Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> setCharacterEvents({
    required BaseResponseDataEntity<EventEntity> baseResponseDataEntity,
  }) async {
    try {
      await _localService.saveData<BaseResponseDataEntity<EventEntity>>(
        boxName: AppStringConstants.eventsHiveBoxName,
        data: baseResponseDataEntity,
      );
      return const DataSuccess(
        true,
      );
    } catch (e) {
      logError("setCharacterEvents Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> setCharacterSeries({
    required BaseResponseDataEntity<SeriesEntity> baseResponseDataEntity,
  }) async {
    try {
      await _localService.saveData<BaseResponseDataEntity<SeriesEntity>>(
        boxName: AppStringConstants.seriesHiveBoxName,
        data: baseResponseDataEntity,
      );
      return const DataSuccess(
        true,
      );
    } catch (e) {
      logError("setCharacterSeries Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> setCharacterStories({
    required BaseResponseDataEntity<StoryEntity> baseResponseDataEntity,
  }) async {
    try {
      await _localService.saveData<BaseResponseDataEntity<StoryEntity>>(
        boxName: AppStringConstants.storiesHiveBoxName,
        data: baseResponseDataEntity,
      );
      return const DataSuccess(
        true,
      );
    } catch (e) {
      logError("setCharacterStories Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> setCharacters({
    required BaseResponseDataEntity<CharacterEntity> characters,
  }) async {
    try {
      await _localService.saveData<BaseResponseDataEntity<CharacterEntity>>(
        boxName: AppStringConstants.appHiveBoxName,
        key: AppStringConstants.charactersHiveKeyName,
        data: characters,
      );
      return const DataSuccess(
        true,
      );
    } catch (e) {
      logError("setCharacters Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<DataState<bool>> setCharactersParams({
    required CharactersUseCaseParams params,
  }) async {
    try {
      await _localService.saveData<CharactersUseCaseParams>(
        boxName: AppStringConstants.appHiveBoxName,
        key: AppStringConstants.charactersParamsHiveKeyName,
        data: params,
      );
      return const DataSuccess(
        true,
      );
    } catch (e) {
      logError("setCharactersParams Error => $e");
      return DataFailed(
        ErrorModel(
          success: false,
          message: e.toString(),
        ),
      );
    }
  }
}
