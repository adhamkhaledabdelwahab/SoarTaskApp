import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/original_issue_entity/original_issue_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';

part 'story_entity.g.dart';

@HiveType(typeId: HiveIds.storyEntityId)
class StoryEntity extends Equatable {
  const StoryEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.resourceUri,
    required this.type,
    required this.modified,
    required this.thumbnail,
    required this.creators,
    required this.characters,
    required this.series,
    required this.comics,
    required this.events,
    required this.originalIssue,
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
  final String type;
  @HiveField(5)
  final String modified;
  @HiveField(6)
  final ThumbnailEntity thumbnail;
  @HiveField(7)
  final CreatorsEntity creators;
  @HiveField(8)
  final CharacterResourceEntity characters;
  @HiveField(9)
  final CharacterResourceEntity series;
  @HiveField(10)
  final CharacterResourceEntity comics;
  @HiveField(11)
  final CharacterResourceEntity events;
  @HiveField(12)
  final OriginalIssueEntity originalIssue;

  @override
  List<Object> get props => [
        id,
        title,
        description,
        resourceUri,
        type,
        modified,
        thumbnail,
        creators,
        characters,
        series,
        comics,
        events,
        originalIssue,
      ];
}
