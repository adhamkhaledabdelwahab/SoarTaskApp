import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

@Injectable()
class GetCharactersUseCase
    implements
        UseCase<DataState<BaseResponseDataEntity<CharacterEntity>>,
            CharactersUseCaseParams> {
  final HomeRepository _homeRepository;

  GetCharactersUseCase(this._homeRepository);

  @override
  Future<DataState<BaseResponseDataEntity<CharacterEntity>>> call({
    required CharactersUseCaseParams params,
  }) =>
      _homeRepository.getCharacters(
        params: params,
      );
}
