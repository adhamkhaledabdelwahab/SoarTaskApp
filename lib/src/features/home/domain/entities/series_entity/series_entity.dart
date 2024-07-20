import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/next_entity/next_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

class SeriesEntity extends Equatable {
  const SeriesEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.resourceUri,
    required this.urls,
    required this.startYear,
    required this.endYear,
    required this.rating,
    required this.type,
    required this.modified,
    required this.thumbnail,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.comics,
    required this.events,
    required this.next,
    required this.previous,
  });

  final int id;
  final String title;
  final String description;
  final String resourceUri;
  final List<UrlEntity> urls;
  final num startYear;
  final num endYear;
  final String rating;
  final String type;
  final String modified;
  final ThumbnailEntity thumbnail;
  final CreatorsEntity creators;
  final CharacterResourceEntity characters;
  final StoryResourceEntity stories;
  final CharacterResourceEntity comics;
  final CharacterResourceEntity events;
  final NextEntity next;
  final NextEntity previous;

  @override
  List<Object> get props => [
        id,
        title,
        description,
        resourceUri,
        urls,
        startYear,
        endYear,
        rating,
        type,
        modified,
        thumbnail,
        creators,
        characters,
        stories,
        comics,
        events,
        next,
        previous,
      ];
}
