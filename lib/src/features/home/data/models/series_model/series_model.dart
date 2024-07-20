import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_resource_model/character_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/creator_model/creator_model.dart';
import 'package:soar_task_app/src/features/home/data/models/next_model/next_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_resource__model/story_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/thumnail_model/thumbnail_model.dart';
import 'package:soar_task_app/src/features/home/data/models/url_model/url_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_entity/series_entity.dart';

part 'series_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class SeriesModel extends Equatable {
  const SeriesModel({
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

  final num? startYear;
  static const String startYearKey = "startYear";

  final num? endYear;
  static const String endYearKey = "endYear";

  final String? rating;
  static const String ratingKey = "rating";

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

  final StoryResourceModel? stories;
  static const String storiesKey = "stories";

  final CharacterResourceModel? comics;
  static const String comicsKey = "comics";

  final CharacterResourceModel? events;
  static const String eventsKey = "events";

  final NextModel? next;
  static const String nextKey = "next";

  final NextModel? previous;
  static const String previousKey = "previous";

  factory SeriesModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesModelFromJson(json);

  SeriesEntity get toEntity => SeriesEntity(
        id: id ?? 0,
        title: title ?? "",
        description: description ?? "",
        resourceUri: resourceUri ?? "",
        urls: urls?.map((e) => e.toEntity).toList() ?? [],
        startYear: startYear ?? 0,
        endYear: endYear ?? 0,
        rating: rating ?? "",
        type: type ?? "",
        modified: modified ?? "",
        thumbnail: thumbnail?.toEntity ?? ThumbnailModel.empty().toEntity,
        creators: creators?.toEntity ?? CreatorsModel.empty().toEntity,
        characters:
            characters?.toEntity ?? CharacterResourceModel.empty().toEntity,
        stories: stories?.toEntity ?? StoryResourceModel.empty().toEntity,
        comics: comics?.toEntity ?? CharacterResourceModel.empty().toEntity,
        events: events?.toEntity ?? CharacterResourceModel.empty().toEntity,
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
