import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';
import 'package:soar_task_app/src/core/network/endpoints.dart';
import 'package:soar_task_app/src/features/home/data/models/characters_response_model/characters_response_model.dart';
import 'package:soar_task_app/src/features/home/data/remote_service/remote_service.dart';

part 'remote_service_impl.g.dart';

@RestApi()
@Injectable(as: RemoteService)
abstract class RemoteServiceImpl extends RemoteService {
  @factoryMethod
  factory RemoteServiceImpl(@Named('Dio') Dio dio) => _RemoteServiceImpl(dio);

  @override
  @GET(EndPoints.epGetCharacters)
  Future<HttpResponse<CharactersResponseModel>> getCharacters();
}
