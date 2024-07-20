import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/network/error_model/error_model.dart';
import 'package:soar_task_app/src/core/translations/locale_keys.dart';
import 'package:soar_task_app/src/features/home/data/data_source/home_data_source.dart';
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
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/get_character_use_case.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _homeDataSource;

  HomeRepositoryImpl(this._homeDataSource);

  @override
  Future<DataState<BaseResponseDataEntity<CharacterEntity>>> getCharacters({
    required CharactersParams params,
  }) async {
    final DataState<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>
        modelData = await _homeDataSource.getCharacters(
      params: params,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return DataFailed(
        modelData.error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
    }
    return DataSuccess(
      modelData.data!.data!.toEntity<CharacterEntity>(
        (p0) => p0.toEntity,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<ComicEntity>>> getCharacterComics({
    required num characterId,
  }) async {
    final DataState<BaseResponseModel<BaseResponseDataModel<ComicModel>>>
        modelData = await _homeDataSource.getCharacterComics(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return DataFailed(
        modelData.error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
    }
    return DataSuccess(
      modelData.data!.data!.toEntity<ComicEntity>(
        (p0) => p0.toEntity,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<EventEntity>>> getCharacterEvents({
    required num characterId,
  }) async {
    final DataState<BaseResponseModel<BaseResponseDataModel<EventModel>>>
        modelData = await _homeDataSource.getCharacterEvents(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return DataFailed(
        modelData.error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
    }
    return DataSuccess(
      modelData.data!.data!.toEntity<EventEntity>(
        (p0) => p0.toEntity,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<SeriesEntity>>> getCharacterSeries({
    required num characterId,
  }) async {
    final DataState<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>
        modelData = await _homeDataSource.getCharacterSeries(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return DataFailed(
        modelData.error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
    }
    return DataSuccess(
      modelData.data!.data!.toEntity<SeriesEntity>(
        (p0) => p0.toEntity,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseDataEntity<StoryEntity>>> getCharacterStories({
    required num characterId,
  }) async {
    final DataState<BaseResponseModel<BaseResponseDataModel<StoryModel>>>
        modelData = await _homeDataSource.getCharacterStories(
      characterId: characterId,
    );

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return DataFailed(
        modelData.error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
    }
    return DataSuccess(
      modelData.data!.data!.toEntity<StoryEntity>(
        (p0) => p0.toEntity,
      ),
    );
  }
}
