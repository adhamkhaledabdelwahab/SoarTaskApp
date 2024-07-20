import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_resource_model/character_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/date_model/date_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/price_model/price_model.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_model/text_objext_model/text_object_model.dart';
import 'package:soar_task_app/src/features/home/data/models/creator_model/creator_model.dart';
import 'package:soar_task_app/src/features/home/data/models/series_resource_model/series_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/story_resource__model/story_resource_model.dart';
import 'package:soar_task_app/src/features/home/data/models/thumnail_model/thumbnail_model.dart';
import 'package:soar_task_app/src/features/home/data/models/url_model/url_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_entity/comic_entity.dart';

part 'comic_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class ComicModel extends Equatable {
  const ComicModel({
    required this.id,
    required this.digitalId,
    required this.title,
    required this.issueNumber,
    required this.variantDescription,
    required this.description,
    required this.modified,
    required this.isbn,
    required this.upc,
    required this.diamondCode,
    required this.ean,
    required this.issn,
    required this.format,
    required this.pageCount,
    required this.textObjects,
    required this.resourceUri,
    required this.urls,
    required this.series,
    required this.variants,
    required this.collections,
    required this.collectedIssues,
    required this.dates,
    required this.prices,
    required this.thumbnail,
    required this.images,
    required this.creators,
    required this.characters,
    required this.stories,
    required this.events,
  });

  final int? id;
  static const String idKey = "id";

  final num? digitalId;
  static const String digitalIdKey = "digitalId";

  final String? title;
  static const String titleKey = "title";

  final num? issueNumber;
  static const String issueNumberKey = "issueNumber";

  final String? variantDescription;
  static const String variantDescriptionKey = "variantDescription";

  final String? description;
  static const String descriptionKey = "description";

  final String? modified;
  static const String modifiedKey = "modified";

  final String? isbn;
  static const String isbnKey = "isbn";

  final String? upc;
  static const String upcKey = "upc";

  final String? diamondCode;
  static const String diamondCodeKey = "diamondCode";

  final String? ean;
  static const String eanKey = "ean";

  final String? issn;
  static const String issnKey = "issn";

  final String? format;
  static const String formatKey = "format";

  final num? pageCount;
  static const String pageCountKey = "pageCount";

  final List<TextObjectModel>? textObjects;
  static const String textObjectsKey = "textObjects";

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final List<UrlModel>? urls;
  static const String urlsKey = "urls";

  final SeriesResourceModel? series;
  static const String seriesKey = "series";

  final List<SeriesResourceModel>? variants;
  static const String variantsKey = "variants";

  final List<dynamic>? collections;
  static const String collectionsKey = "collections";

  final List<dynamic>? collectedIssues;
  static const String collectedIssuesKey = "collectedIssues";

  final List<DateModel>? dates;
  static const String datesKey = "dates";

  final List<PriceModel>? prices;
  static const String pricesKey = "prices";

  final ThumbnailModel? thumbnail;
  static const String thumbnailKey = "thumbnail";

  final List<ThumbnailModel>? images;
  static const String imagesKey = "images";

  final CreatorsModel? creators;
  static const String creatorsKey = "creators";

  final CharacterResourceModel? characters;
  static const String charactersKey = "characters";

  final StoryResourceModel? stories;
  static const String storiesKey = "stories";

  final CharacterResourceModel? events;
  static const String eventsKey = "events";

  factory ComicModel.fromJson(Map<String, dynamic> json) =>
      _$ComicModelFromJson(json);

  ComicEntity get toEntity => ComicEntity(
        id: id ?? 0,
        digitalId: digitalId ?? 0,
        title: title ?? "",
        issueNumber: issueNumber ?? 0,
        variantDescription: variantDescription ?? "",
        description: description ?? "",
        modified: modified ?? "",
        isbn: isbn ?? "",
        upc: upc ?? "",
        diamondCode: diamondCode ?? "",
        ean: ean ?? "",
        issn: issn ?? "",
        format: format ?? "",
        pageCount: pageCount ?? 0,
        textObjects: textObjects?.map((e) => e.toEntity).toList() ?? [],
        resourceUri: resourceUri ?? "",
        urls: urls?.map((e) => e.toEntity).toList() ?? [],
        series: series?.toEntity ?? SeriesResourceModel.empty().toEntity,
        variants: variants?.map((e) => e.toEntity).toList() ?? [],
        collections: collections ?? [],
        collectedIssues: collectedIssues ?? [],
        dates: dates?.map((e) => e.toEntity).toList() ?? [],
        prices: prices?.map((e) => e.toEntity).toList() ?? [],
        thumbnail: thumbnail?.toEntity ?? ThumbnailModel.empty().toEntity,
        images: images?.map((e) => e.toEntity).toList() ?? [],
        creators: creators?.toEntity ?? CreatorsModel.empty().toEntity,
        characters:
            characters?.toEntity ?? CharacterResourceModel.empty().toEntity,
        stories: stories?.toEntity ?? StoryResourceModel.empty().toEntity,
        events: events?.toEntity ?? CharacterResourceModel.empty().toEntity,
      );

  @override
  List<Object?> get props => [
        id,
        digitalId,
        title,
        issueNumber,
        variantDescription,
        description,
        modified,
        isbn,
        upc,
        diamondCode,
        ean,
        issn,
        format,
        pageCount,
        textObjects,
        resourceUri,
        urls,
        series,
        variants,
        collections,
        collectedIssues,
        dates,
        prices,
        thumbnail,
        images,
        creators,
        characters,
        stories,
        events,
      ];
}
