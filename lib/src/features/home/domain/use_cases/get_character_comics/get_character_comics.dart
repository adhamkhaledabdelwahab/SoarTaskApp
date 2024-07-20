import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable()
class GetCharacterComicsUseCase
    implements UseCase<DataState<BaseResponseDataEntity<ComicEntity>>, num> {
  final HomeRepository _homeRepository;

  GetCharacterComicsUseCase(this._homeRepository);

  @override
  Future<DataState<BaseResponseDataEntity<ComicEntity>>> call({
    required num params,
  }) =>
      _homeRepository.getCharacterComics(
        characterId: params,
      );
}
