import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:soar_task_app/src/core/dependency_injection/dependency_init.dart';
import 'package:soar_task_app/src/core/network/data_state.dart';
import 'package:soar_task_app/src/core/utils/log_util.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_comics/get_character_comics.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_events/get_character_events.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_series/get_character_series.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_stories/get_character_stories.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/character_use_case_params/characters_use_case_params.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_character_use_case/get_character_use_case.dart';
import 'package:soar_task_app/src/features/home/domain/use_cases/get_characters_params_use_case/get_characters_params_use_case.dart';
import 'package:soar_task_app/src/features/home/presentation/manager/bloc_enums.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCharactersUseCase _getCharactersUseCase =
      getIt<GetCharactersUseCase>();

  final GetCharacterComicsUseCase _getCharacterComicsUseCase =
      getIt<GetCharacterComicsUseCase>();

  final GetCharacterEventsUseCase _getCharacterEventsUseCase =
      getIt<GetCharacterEventsUseCase>();

  final GetCharacterStoriesUseCase _getCharacterStoriesUseCase =
      getIt<GetCharacterStoriesUseCase>();

  final GetCharacterSeriesUseCase _getCharacterSeriesUseCase =
      getIt<GetCharacterSeriesUseCase>();

  final GetCharactersParamsUseCase _getCharactersParamsUseCase =
      getIt<GetCharactersParamsUseCase>();

  static HomeBloc get(BuildContext context) => BlocProvider.of(context);

  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>(_handler);
  }

  Future<void> _handler(HomeEvent event, Emitter emit) async {
    switch (event.action) {
      case HomeBlocActions.getCharacters:
        await _getCharacters(event, emit);
        break;
      case HomeBlocActions.characterDetails:
        await _characterDetails(event, emit);
        break;
      case HomeBlocActions.getCharactersParams:
        await _charactersParams(event, emit);
        break;
      default:
        break;
    }
  }

  Future _getCharacters(HomeEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        action: event.action,
        state: HomeBlocState.loading,
      ),
    );
    final response = await _getCharactersUseCase.call(
      params: event.charactersParams!,
    );
    if (response is DataSuccess) {
      BaseResponseDataEntity<CharacterEntity>? charactersResponse =
          state.charactersResponse;
      if (charactersResponse != null) {
        final nResult = List.of(charactersResponse.results);
        nResult.addAll(response.data!.results);
        charactersResponse = charactersResponse.copyWith(
          offset: response.data!.offset,
          limit: response.data!.limit,
          total: response.data!.total,
          count: response.data!.count,
          results: nResult,
        );
      }
      emit(
        state.copyWith(
          action: event.action,
          state: HomeBlocState.success,
          charactersResponse: charactersResponse ?? response.data,
          params: event.charactersParams,
        ),
      );
    } else {
      logError(
        "$runtimeType _getCharacters Error => ${response.error?.message}",
      );
      emit(
        state.copyWith(
          action: event.action,
          state: HomeBlocState.error,
        ),
      );
    }
  }

  Future _characterDetails(HomeEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        action: event.action,
        state: HomeBlocState.loading,
        characterDetails: event.character,
      ),
    );
    final response = await Future.wait(
      [
        _getCharacterComicsUseCase.call(params: event.character!.id),
        _getCharacterEventsUseCase.call(params: event.character!.id),
        _getCharacterSeriesUseCase.call(params: event.character!.id),
        _getCharacterStoriesUseCase.call(params: event.character!.id),
      ],
    );
    if (response.every((element) => element is DataSuccess)) {
      emit(
        state.copyWith(
          action: event.action,
          state: HomeBlocState.success,
          comicsResponse:
              response[0].data! as BaseResponseDataEntity<ComicEntity>,
          eventsResponse:
              response[1].data! as BaseResponseDataEntity<EventEntity>,
          seriesResponse:
              response[2].data! as BaseResponseDataEntity<SeriesEntity>,
          storiesResponse:
              response[3].data! as BaseResponseDataEntity<StoryEntity>,
          isDetails: true,
        ),
      );
    } else {
      logError(
        "$runtimeType _characterDetails _getCharacterComicsUseCase Error => ${response[0].error?.message}",
      );
      logError(
        "$runtimeType _characterDetails _getCharacterEventsUseCase Error => ${response[1].error?.message}",
      );
      logError(
        "$runtimeType _characterDetails _getCharacterSeriesUseCase Error => ${response[2].error?.message}",
      );
      logError(
        "$runtimeType _characterDetails _getCharacterStoriesUseCase Error => ${response[3].error?.message}",
      );
      emit(
        state.copyWith(
          action: event.action,
          state: HomeBlocState.error,
          isDetails: true,
        ),
      );
    }
  }

  Future _charactersParams(HomeEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        action: event.action,
        state: HomeBlocState.loading,
      ),
    );
    final result = await _getCharactersParamsUseCase.call();
    if (result is DataSuccess) {
      emit(
        state.copyWith(
          action: event.action,
          state: HomeBlocState.success,
          params: result.data,
        ),
      );
    } else {
      logError(
        "$runtimeType _charactersParams Error => ${result.error?.message}",
      );
      emit(
        state.copyWith(
          action: event.action,
          state: HomeBlocState.error,
        ),
      );
    }
  }
}
