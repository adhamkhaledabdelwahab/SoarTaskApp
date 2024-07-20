import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_resource_model/character_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/creator_model/creator_model.dart';
import 'package:soar_task_app/src/features/home/data/models/next_model/next_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_resource__model/story_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/thumnail_model/thumbnail_model.dart';
import 'package:soar_task_app/src/features/home/data/models/url_model/url_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/event_entity/event_entity.dart';

part 'event_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class EventModel extends Equatable {
  const EventModel({
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

  final int? id;
  static const String idKey = "id";

  final String? title;
  static const String titleKey = "title";

  final String? description;
  static const String descriptionKey = "description";

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final List<UrlModel>? urls;
  static const String urlsKey = "urls";

  final String? modified;
  static const String modifiedKey = "modified";

  final DateTime? start;
  static const String startKey = "start";

  final DateTime? end;
  static const String endKey = "end";

  final ThumbnailModel? thumbnail;
  static const String thumbnailKey = "thumbnail";

  final CreatorsModel? creators;
  static const String creatorsKey = "creators";

  final CharacterResourceModel? characters;
  static const String charactersKey = "characters";

  final StoryResourceModel? stories;
  static const String storiesKey = "stories";

  final CharacterResourceModel? comics;
  static const String comicsKey = "comics";

  final CharacterResourceModel? series;
  static const String seriesKey = "series";

  final NextModel? next;
  static const String nextKey = "next";

  final NextModel? previous;
  static const String previousKey = "previous";

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  EventEntity get toEntity => EventEntity(
        id: id ?? 0,
        title: title ?? "",
        description: description ?? "",
        resourceUri: resourceUri ?? "",
        urls: urls?.map((e) => e.toEntity).toList() ?? [],
        modified: modified ?? "",
        start: start,
        end: end,
        thumbnail: thumbnail?.toEntity ?? ThumbnailModel.empty().toEntity,
        creators: creators?.toEntity ?? CreatorsModel.empty().toEntity,
        characters:
            characters?.toEntity ?? CharacterResourceModel.empty().toEntity,
        stories: stories?.toEntity ?? StoryResourceModel.empty().toEntity,
        comics: comics?.toEntity ?? CharacterResourceModel.empty().toEntity,
        series: series?.toEntity ?? CharacterResourceModel.empty().toEntity,
        next: next?.toEntity ?? NextModel.empty().toEntity,
        previous: previous?.toEntity ?? NextModel.empty().toEntity,
      );

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
