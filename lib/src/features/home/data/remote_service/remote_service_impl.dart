import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:soar_task_app/src/core/network/endpoints.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_data_model/base_response_data_model.dart';
import 'package:soar_task_app/src/features/home/data/models/base_models/base_response_model/base_response_model.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/character_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/comic_model.dart';
import 'package:soar_task_app/src/features/home/data/models/event_model/event_model.dart';
import 'package:soar_task_app/src/features/home/data/models/series_model/series_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_model/story_model.dart';
import 'package:soar_task_app/src/features/home/data/remote_service/remote_service.dart';

part 'remote_service_impl.g.dart';

@RestApi()
@Injectable(as: RemoteService)
abstract class RemoteServiceImpl extends RemoteService {
  @factoryMethod
  factory RemoteServiceImpl(@Named('Dio') Dio dio) => _RemoteServiceImpl(dio);

  @override
  @GET(EndPoints.epGetCharacters)
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<CharacterModel>>>>
      getCharacters({
    @Query("limit") required int limit,
    @Query("offset") required int offset,
  });

  @override
  @GET(EndPoints.epGetCharacterComics)
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<ComicModel>>>>
      getCharacterComics({
    @Query("limit") int limit = 3,
    @Path("characterId") required num characterId,
  });

  @override
  @GET(EndPoints.epGetCharacterEvents)
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<EventModel>>>>
      getCharacterEvents({
    @Query("limit") int limit = 3,
    @Path("characterId") required num characterId,
  });

  @override
  @GET(EndPoints.epGetCharacterSeries)
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<SeriesModel>>>>
      getCharacterSeries({
    @Query("limit") int limit = 3,
    @Path("characterId") required num characterId,
  });

  @override
  @GET(EndPoints.epGetCharacterStories)
  Future<HttpResponse<BaseResponseModel<BaseResponseDataModel<StoryModel>>>>
      getCharacterStories({
    @Query("limit") int limit = 3,
    @Path("characterId") required num characterId,
  });
}
