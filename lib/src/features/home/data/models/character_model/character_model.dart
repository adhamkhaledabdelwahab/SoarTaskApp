import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/comic_resource_model/comic_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_resource__model/story_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/thumnail_model/thumbnail_model.dart';
import 'package:soar_task_app/src/features/home/data/models/url_model/url_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';

part 'character_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class CharacterModel extends Equatable {
  const CharacterModel({
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

  final int? id;
  static const String idKey = "id";

  final String? name;
  static const String nameKey = "name";

  final String? description;
  static const String descriptionKey = "description";

  final String? modified;
  static const String modifiedKey = "modified";

  final ThumbnailModel? thumbnail;
  static const String thumbnailKey = "thumbnail";

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final ComicResourceModel? comics;
  static const String comicsKey = "comics";

  final ComicResourceModel? series;
  static const String seriesKey = "series";

  final StoryResourceModel? stories;
  static const String storiesKey = "stories";

  final ComicResourceModel? events;
  static const String eventsKey = "events";

  final List<UrlModel>? urls;
  static const String urlsKey = "urls";

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  CharacterEntity get toEntity => CharacterEntity(
        id: id ?? 0,
        name: name ?? "",
        description: description ?? "",
        modified: modified ?? "",
        thumbnail: thumbnail?.toEntity ?? ThumbnailModel.empty().toEntity,
        resourceUri: resourceUri ?? "",
        comics: comics?.toEntity ?? ComicResourceModel.empty().toEntity,
        series: series?.toEntity ?? ComicResourceModel.empty().toEntity,
        stories: stories?.toEntity ?? StoryResourceModel.empty().toEntity,
        events: events?.toEntity ?? ComicResourceModel.empty().toEntity,
        urls: urls?.map((e) => e.toEntity).toList() ?? [],
      );

  @override
  List<Object?> get props => [
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
