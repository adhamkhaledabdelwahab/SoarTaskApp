import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/network/error_model/error_model.dart';
import 'package:soar_task_app/src/core/translations/locale_keys.dart';
import 'package:soar_task_app/src/features/home/data/data_source/home_data_source.dart';
import 'package:soar_task_app/src/features/home/data/models/characters_response_model/characters_response_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/characters_response_entity/characters_response_entity.dart';
import 'package:soar_task_app/src/features/home/domain/repository/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource _homeDataSource;

  HomeRepositoryImpl(this._homeDataSource);

  @override
  Future<DataState<CharactersResponseEntity>> getCharacters() async {
    final DataState<CharactersResponseModel> modelData =
        await _homeDataSource.getCharacters();

    if (modelData is DataFailed ||
        (modelData is DataSuccess && modelData.data == null)) {
      return DataFailed(
        modelData.error ??
            ErrorModel(
              success: false,
              message: LocaleKeys.someThingWentWrong.tr(),
            ),
      );
    }
    return DataSuccess(modelData.data!.toEntity);
  }
}
