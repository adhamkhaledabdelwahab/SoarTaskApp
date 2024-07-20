import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable()
class GetCharacterStoriesUseCase
    implements UseCase<DataState<BaseResponseDataEntity<StoryEntity>>, num> {
  final HomeRepository _homeRepository;

  GetCharacterStoriesUseCase(this._homeRepository);

  @override
  Future<DataState<BaseResponseDataEntity<StoryEntity>>> call({
    required num params,
  }) =>
      _homeRepository.getCharacterStories(
        characterId: params,
      );
}
