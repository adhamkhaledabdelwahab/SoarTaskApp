import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable()
class GetCharactersUseCase
    implements
        UseCase<DataState<BaseResponseDataEntity<CharacterEntity>>,
            CharactersParams> {
  final HomeRepository _homeRepository;

  GetCharactersUseCase(this._homeRepository);

  @override
  Future<DataState<BaseResponseDataEntity<CharacterEntity>>> call({
    required CharactersParams params,
  }) =>
      _homeRepository.getCharacters(
        params: params,
      );
}

class CharactersParams {
  final int limit;
  final int offset;

  CharactersParams({
    this.limit = 20,
    required this.offset,
  });

  CharactersParams copyWith({
    int? limit,
    int? offset,
  }) {
    return CharactersParams(
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
    );
  }
}
