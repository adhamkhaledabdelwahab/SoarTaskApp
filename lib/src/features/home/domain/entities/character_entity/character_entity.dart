import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_entity/comic_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

part 'character_entity.g.dart';

@HiveType(typeId: HiveIds.characterEntityId)
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

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String modified;
  @HiveField(4)
  final ThumbnailEntity thumbnail;
  @HiveField(5)
  final String resourceUri;
  @HiveField(6)
  final ComicResourceEntity comics;
  @HiveField(7)
  final ComicResourceEntity series;
  @HiveField(8)
  final StoryResourceEntity stories;
  @HiveField(9)
  final ComicResourceEntity events;
  @HiveField(10)
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
