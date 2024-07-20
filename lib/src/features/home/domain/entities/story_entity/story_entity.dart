import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/original_issue_entity/original_issue_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';

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

  final int id;
  final String title;
  final String description;
  final String resourceUri;
  final String type;
  final String modified;
  final ThumbnailEntity thumbnail;
  final CreatorsEntity creators;
  final CharacterResourceEntity characters;
  final CharacterResourceEntity series;
  final CharacterResourceEntity comics;
  final CharacterResourceEntity events;
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
