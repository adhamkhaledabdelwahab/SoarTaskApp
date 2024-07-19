import 'package:retrofit/retrofit.dart';
import 'package:soar_task_app/src/features/home/data/models/characters_response_model/characters_response_model.dart';

abstract class RemoteService {
  Future<HttpResponse<CharactersResponseModel>> getCharacters();
}
