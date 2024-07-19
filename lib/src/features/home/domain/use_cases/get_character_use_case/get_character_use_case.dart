import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/characters_response_entity/characters_response_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable()
class GetCharactersUseCase
    implements UseCase<DataState<CharactersResponseEntity>, void> {
  final HomeRepository _homeRepository;

  GetCharactersUseCase(this._homeRepository);

  @override
  Future<DataState<CharactersResponseEntity>> call({required void params}) =>
      _homeRepository.getCharacters();
}
