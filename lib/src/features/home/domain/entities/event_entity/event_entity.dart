import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/next_entity/next_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

part 'event_entity.g.dart';

@HiveType(typeId: HiveIds.eventEntityId)
class EventEntity extends Equatable {
  const EventEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.resourceUri,
    required this.urls,
    required this.modified,
    required this.start,
    required this.end,
    required this.thumbnail,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.comics,
    required this.series,
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
  final String modified;
  @HiveField(6)
  final DateTime? start;
  @HiveField(7)
  final DateTime? end;
  @HiveField(8)
  final ThumbnailEntity thumbnail;
  @HiveField(9)
  final CreatorsEntity creators;
  @HiveField(10)
  final CharacterResourceEntity characters;
  @HiveField(11)
  final StoryResourceEntity stories;
  @HiveField(12)
  final CharacterResourceEntity comics;
  @HiveField(13)
  final CharacterResourceEntity series;
  @HiveField(14)
  final NextEntity next;
  @HiveField(15)
  final NextEntity previous;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        resourceUri,
        urls,
        modified,
        start,
        end,
        thumbnail,
        creators,
        characters,
        stories,
        comics,
        series,
        next,
        previous,
      ];
}
