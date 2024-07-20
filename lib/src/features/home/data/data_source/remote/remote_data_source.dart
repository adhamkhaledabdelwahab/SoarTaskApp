import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_data_model/base_response_data_model.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_model/base_response_model.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/character_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/comic_model.dart';
import 'package:soar_task_app/src/features/home/data/models/event_model/event_model.dart';
import 'package:soar_task_app/src/features/home/data/models/series_model/series_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_model/story_model.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

abstract class RemoteDataSource {
  Future<DataState<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>>
      getCharacters({
    required CharactersUseCaseParams params,
  });

  Future<DataState<BaseResponseModel<BaseResponseDataModel<ComicModel>>>>
      getCharacterComics({
    required num characterId,
  });

  Future<DataState<BaseResponseModel<BaseResponseDataModel<EventModel>>>>
      getCharacterEvents({
    required num characterId,
  });

  Future<DataState<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>>
      getCharacterSeries({
    required num characterId,
  });

  Future<DataState<BaseResponseModel<BaseResponseDataModel<StoryModel>>>>
      getCharacterStories({
    required num characterId,
  });
}
