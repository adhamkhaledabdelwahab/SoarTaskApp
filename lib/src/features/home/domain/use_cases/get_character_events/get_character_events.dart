import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable()
class GetCharacterEventsUseCase
    implements UseCase<DataState<BaseResponseDataEntity<EventEntity>>, num> {
  final HomeRepository _homeRepository;

  GetCharacterEventsUseCase(this._homeRepository);

  @override
  Future<DataState<BaseResponseDataEntity<EventEntity>>> call({
    required num params,
  }) =>
      _homeRepository.getCharacterEvents(
        characterId: params,
      );
}
