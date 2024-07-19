import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/network/network_utils.dart';
import 'package:soar_task_app/src/features/home/data/data_source/home_data_source.dart';
import 'package:soar_task_app/src/features/home/data/models/characters_response_model/characters_response_model.dart';
import 'package:soar_task_app/src/features/home/data/remote_service/remote_service.dart';

@Injectable(as: HomeDataSource)
class HomeDataSourceImpl extends HomeDataSource {
  final RemoteService _service;

  HomeDataSourceImpl(this._service);

  @override
  Future<DataState<CharactersResponseModel>> getCharacters() {
    final NetworkUtils<CharactersResponseModel> networkUtils = NetworkUtils();

    return networkUtils.handleApiResponse(
      _service.getCharacters(),
    );
  }
}
