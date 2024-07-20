import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/next_entity/next_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

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

  final int id;
  final String title;
  final String description;
  final String resourceUri;
  final List<UrlEntity> urls;
  final String modified;
  final DateTime? start;
  final DateTime? end;
  final ThumbnailEntity thumbnail;
  final CreatorsEntity creators;
  final CharacterResourceEntity characters;
  final StoryResourceEntity stories;
  final CharacterResourceEntity comics;
  final CharacterResourceEntity series;
  final NextEntity next;
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
