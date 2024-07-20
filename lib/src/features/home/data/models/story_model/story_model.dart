import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_resource_model/character_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/creator_model/creator_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_model/original_issue_model/original_issue_model.dart';
import 'package:soar_task_app/src/features/home/data/models/thumnail_model/thumbnail_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_entity/story_entity.dart';

part 'story_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class StoryModel extends Equatable {
  const StoryModel({
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

  final int? id;
  static const String idKey = "id";

  final String? title;
  static const String titleKey = "title";

  final String? description;
  static const String descriptionKey = "description";

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? type;
  static const String typeKey = "type";

  final String? modified;
  static const String modifiedKey = "modified";

  final ThumbnailModel? thumbnail;
  static const String thumbnailKey = "thumbnail";

  final CreatorsModel? creators;
  static const String creatorsKey = "creators";

  final CharacterResourceModel? characters;
  static const String charactersKey = "characters";

  final CharacterResourceModel? series;
  static const String seriesKey = "series";

  final CharacterResourceModel? comics;
  static const String comicsKey = "comics";

  final CharacterResourceModel? events;
  static const String eventsKey = "events";

  final OriginalIssueModel? originalIssue;
  static const String originalIssueKey = "originalIssue";

  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);

  StoryEntity get toEntity => StoryEntity(
        id: id ?? 0,
        title: title ?? "",
        description: description ?? "",
        resourceUri: resourceUri ?? "",
        type: type ?? "",
        modified: modified ?? "",
        thumbnail: thumbnail?.toEntity ?? ThumbnailModel.empty().toEntity,
        creators: creators?.toEntity ?? CreatorsModel.empty().toEntity,
        characters:
            characters?.toEntity ?? CharacterResourceModel.empty().toEntity,
        series: series?.toEntity ?? CharacterResourceModel.empty().toEntity,
        comics: comics?.toEntity ?? CharacterResourceModel.empty().toEntity,
        events: events?.toEntity ?? CharacterResourceModel.empty().toEntity,
        originalIssue:
            originalIssue?.toEntity ?? OriginalIssueModel.empty().toEntity,
      );

  @override
  List<Object?> get props => [
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
