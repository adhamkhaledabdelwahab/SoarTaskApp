import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

@Injectable()
class GetCharactersParamsUseCase
    implements UseCase<DataState<CharactersUseCaseParams?>, void> {
  final HomeRepository _homeRepository;

  GetCharactersParamsUseCase(this._homeRepository);

  @override
  Future<DataState<CharactersUseCaseParams?>> call({void params}) =>
      _homeRepository.getCharactersParams();
}
