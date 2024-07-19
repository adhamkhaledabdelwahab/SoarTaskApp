import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/features/home/data/models/characters_response_model/characters_response_model.dart';

abstract class HomeDataSource {
  Future<DataState<CharactersResponseModel>> getCharacters();
}
