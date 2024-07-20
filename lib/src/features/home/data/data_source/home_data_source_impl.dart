import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/network/network_utils.dart';
import 'package:soar_task_app/src/features/home/data/data_source/home_data_source.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_data_model/base_response_data_model.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_model/base_response_model.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/character_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/comic_model.dart';
import 'package:soar_task_app/src/features/home/data/models/event_model/event_model.dart';
import 'package:soar_task_app/src/features/home/data/models/series_model/series_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_model/story_model.dart';
import 'package:soar_task_app/src/features/home/data/remote_service/remote_service.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/get_character_use_case.dart';

@Injectable(as: HomeDataSource)
class HomeDataSourceImpl extends HomeDataSource {
  final RemoteService _service;

  HomeDataSourceImpl(this._service);

  @override
  Future<DataState<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>>
      getCharacters({
    required CharactersParams params,
  }) {
    final NetworkUtils<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>
        networkUtils = NetworkUtils();

    return networkUtils.handleApiResponse(
      _service.getCharacters(
        limit: params.limit,
        offset: params.offset,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseModel<BaseResponseDataModel<ComicModel>>>>
      getCharacterComics({
    required num characterId,
  }) {
    final NetworkUtils<BaseResponseModel<BaseResponseDataModel<ComicModel>>>
        networkUtils = NetworkUtils();

    return networkUtils.handleApiResponse(
      _service.getCharacterComics(
        characterId: characterId,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseModel<BaseResponseDataModel<EventModel>>>>
      getCharacterEvents({
    required num characterId,
  }) {
    final NetworkUtils<BaseResponseModel<BaseResponseDataModel<EventModel>>>
        networkUtils = NetworkUtils();

    return networkUtils.handleApiResponse(
      _service.getCharacterEvents(
        characterId: characterId,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>>
      getCharacterSeries({
    required num characterId,
  }) {
    final NetworkUtils<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>
        networkUtils = NetworkUtils();

    return networkUtils.handleApiResponse(
      _service.getCharacterSeries(
        characterId: characterId,
      ),
    );
  }

  @override
  Future<DataState<BaseResponseModel<BaseResponseDataModel<StoryModel>>>>
      getCharacterStories({
    required num characterId,
  }) {
    final NetworkUtils<BaseResponseModel<BaseResponseDataModel<StoryModel>>>
        networkUtils = NetworkUtils();

    return networkUtils.handleApiResponse(
      _service.getCharacterStories(
        characterId: characterId,
      ),
    );
  }
}
