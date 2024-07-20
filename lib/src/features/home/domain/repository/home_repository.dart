import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

abstract class HomeRepository {
  Future<DataState<BaseResponseDataEntity<CharacterEntity>>> getCharacters({
    required CharactersUseCaseParams params,
  });

  Future<DataState<BaseResponseDataEntity<ComicEntity>>> getCharacterComics({
    required num characterId,
  });

  Future<DataState<BaseResponseDataEntity<EventEntity>>> getCharacterEvents({
    required num characterId,
  });

  Future<DataState<BaseResponseDataEntity<SeriesEntity>>> getCharacterSeries({
    required num characterId,
  });

  Future<DataState<BaseResponseDataEntity<StoryEntity>>> getCharacterStories({
    required num characterId,
  });

  Future<DataState<CharactersUseCaseParams?>> getCharactersParams();
}
