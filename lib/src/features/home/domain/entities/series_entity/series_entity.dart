import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/next_entity/next_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

part 'series_entity.g.dart';

@HiveType(typeId: HiveIds.seriesEntityId)
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

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String resourceUri;
  @HiveField(4)
  final List<UrlEntity> urls;
  @HiveField(5)
  final num startYear;
  @HiveField(6)
  final num endYear;
  @HiveField(7)
  final String rating;
  @HiveField(8)
  final String type;
  @HiveField(9)
  final String modified;
  @HiveField(10)
  final ThumbnailEntity thumbnail;
  @HiveField(11)
  final CreatorsEntity creators;
  @HiveField(12)
  final CharacterResourceEntity characters;
  @HiveField(13)
  final StoryResourceEntity stories;
  @HiveField(14)
  final CharacterResourceEntity comics;
  @HiveField(15)
  final CharacterResourceEntity events;
  @HiveField(16)
  final NextEntity next;
  @HiveField(17)
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
