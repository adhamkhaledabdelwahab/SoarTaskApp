import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/features/home/domain/entities/characters_response_entity/characters_response_entity.dart';

abstract class HomeRepository {
  Future<DataState<CharactersResponseEntity>> getCharacters();
}
