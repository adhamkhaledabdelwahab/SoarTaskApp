import 'package:retrofit/retrofit.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_data_model/base_response_data_model.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_model/base_response_model.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/character_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/comic_model.dart';
import 'package:soar_task_app/src/features/home/data/models/event_model/event_model.dart';
import 'package:soar_task_app/src/features/home/data/models/series_model/series_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_model/story_model.dart';

abstract class RemoteService {
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>>
      getCharacters({
    required int limit,
    required int offset,
  });

  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<ComicModel>>>>
      getCharacterComics({
    required num characterId,
  });

  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<EventModel>>>>
      getCharacterEvents({
    required num characterId,
  });

  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>>
      getCharacterSeries({
    required num characterId,
  });

  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<StoryModel>>>>
      getCharacterStories({
    required num characterId,
  });
}
