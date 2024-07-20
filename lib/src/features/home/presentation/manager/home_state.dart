part of 'home_bloc.dart';

@immutable
class HomeState {
  final HomeBlocActions action;
  final HomeBlocState state;
  final BaseResponseDataEntity<CharacterEntity>? charactersResponse;
  final CharacterEntity? characterDetails;
  final BaseResponseDataEntity<ComicEntity>? comicsResponse;
  final BaseResponseDataEntity<EventEntity>? eventsResponse;
  final BaseResponseDataEntity<SeriesEntity>? seriesResponse;
  final BaseResponseDataEntity<StoryEntity>? storiesResponse;
  final CharactersUseCaseParams? params;

  const HomeState({
    this.action = HomeBlocActions.initial,
    this.state = HomeBlocState.initial,
    this.charactersResponse,
    this.characterDetails,
    this.comicsResponse,
    this.eventsResponse,
    this.seriesResponse,
    this.storiesResponse,
    this.params,
  });

  @override
  String toString() => "$action, $state";

  HomeState copyWith({
    required HomeBlocActions action,
    required HomeBlocState state,
    BaseResponseDataEntity<CharacterEntity>? charactersResponse,
    CharacterEntity? characterDetails,
    BaseResponseDataEntity<ComicEntity>? comicsResponse,
    BaseResponseDataEntity<EventEntity>? eventsResponse,
    BaseResponseDataEntity<SeriesEntity>? seriesResponse,
    BaseResponseDataEntity<StoryEntity>? storiesResponse,
    bool isDetails = false,
    CharactersUseCaseParams? params,
  }) {
    return HomeState(
      action: action,
      state: state,
      charactersResponse: charactersResponse ?? this.charactersResponse,
      characterDetails: isDetails ? this.characterDetails : characterDetails,
      comicsResponse: comicsResponse,
      eventsResponse: eventsResponse,
      seriesResponse: seriesResponse,
      storiesResponse: storiesResponse,
      params: params ?? this.params,
    );
  }
}
