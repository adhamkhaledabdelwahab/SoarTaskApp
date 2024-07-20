import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/date_entity/date_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/price_entity/price_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_resource_entity/series_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/text_object_entity/text_object_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

class ComicEntity extends Equatable {
  const ComicEntity({
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

  final int id;
  final num digitalId;
  final String title;
  final num issueNumber;
  final String variantDescription;
  final String description;
  final String modified;
  final String isbn;
  final String upc;
  final String diamondCode;
  final String ean;
  final String issn;
  final String format;
  final num pageCount;
  final List<TextObjectEntity> textObjects;
  final String resourceUri;
  final List<UrlEntity> urls;
  final SeriesResourceEntity series;
  final List<SeriesResourceEntity> variants;
  final List<dynamic> collections;
  final List<dynamic> collectedIssues;
  final List<DateEntity> dates;
  final List<PriceEntity> prices;
  final ThumbnailEntity thumbnail;
  final List<ThumbnailEntity> images;
  final CreatorsEntity creators;
  final CharacterResourceEntity characters;
  final StoryResourceEntity stories;
  final CharacterResourceEntity events;

  @override
  List<Object> get props => [
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
