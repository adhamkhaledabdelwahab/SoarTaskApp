import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';

abstract class LocalDataSource {
  Future<DataState<BaseResponseDataEntity<CharacterEntity>?>> getCharacters();

  Future<DataState<bool>> setCharacters({
    required BaseResponseDataEntity<CharacterEntity> characters,
  });

  Future<DataState<CharactersUseCaseParams?>> getCharactersParams();

  Future<DataState<bool>> setCharactersParams({
    required CharactersUseCaseParams params,
  });

  Future<DataState<BaseResponseDataEntity<ComicEntity>?>> getCharacterComics({
    required num characterId,
  });

  Future<DataState<bool>> setCharacterComics({
    required BaseResponseDataEntity<ComicEntity> baseResponseDataEntity,
  });

  Future<DataState<BaseResponseDataEntity<EventEntity>?>> getCharacterEvents({
    required num characterId,
  });

  Future<DataState<bool>> setCharacterEvents({
    required BaseResponseDataEntity<EventEntity> baseResponseDataEntity,
  });

  Future<DataState<BaseResponseDataEntity<StoryEntity>?>> getCharacterStories({
    required num characterId,
  });

  Future<DataState<bool>> setCharacterStories({
    required BaseResponseDataEntity<StoryEntity> baseResponseDataEntity,
  });

  Future<DataState<BaseResponseDataEntity<SeriesEntity>?>> getCharacterSeries({
    required num characterId,
  });

  Future<DataState<bool>> setCharacterSeries({
    required BaseResponseDataEntity<SeriesEntity> baseResponseDataEntity,
  });

  Future<DataState<bool>> clearCharacterSeries({
    required num characterId,
  });

  Future<DataState<bool>> clearCharacterComics({
    required num characterId,
  });

  Future<DataState<bool>> clearCharacterStories({
    required num characterId,
  });

  Future<DataState<bool>> clearCharacterEvents({
    required num characterId,
  });

  Future<DataState<bool>> clearCharacters();

  Future<DataState<bool>> clearCharactersParams();
}
