part of 'home_bloc.dart';

@immutable
class HomeEvent {
  final HomeBlocActions action;
  final CharactersUseCaseParams? charactersParams;
  final CharacterEntity? character;

  const HomeEvent({
    required this.action,
    this.charactersParams,
    this.character,
  });
}
