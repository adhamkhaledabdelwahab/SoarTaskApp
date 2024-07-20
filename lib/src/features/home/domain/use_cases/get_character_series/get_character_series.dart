import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/usecase/usecase.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable()
class GetCharacterSeriesUseCase
    implements UseCase<DataState<BaseResponseDataEntity<SeriesEntity>>, num> {
  final HomeRepository _homeRepository;

  GetCharacterSeriesUseCase(this._homeRepository);

  @override
  Future<DataState<BaseResponseDataEntity<SeriesEntity>>> call({
    required num params,
  }) =>
      _homeRepository.getCharacterSeries(
        characterId: params,
      );
}
