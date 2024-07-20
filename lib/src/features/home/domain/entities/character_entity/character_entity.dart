import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_entity/comic_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

class CharacterEntity extends Equatable {
  const CharacterEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.modified,
    required this.thumbnail,
    required this.resourceUri,
    required this.comics,
    required this.series,
    required this.stories,
    required this.events,
    required this.urls,
  });

  final int id;
  final String name;
  final String description;
  final String modified;
  final ThumbnailEntity thumbnail;
  final String resourceUri;
  final ComicResourceEntity comics;
  final ComicResourceEntity series;
  final StoryResourceEntity stories;
  final ComicResourceEntity events;
  final List<UrlEntity> urls;

  @override
  List<Object> get props => [
        id,
        name,
        description,
        modified,
        thumbnail,
        resourceUri,
        comics,
        series,
        stories,
        events,
        urls,
      ];
}
