import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/date_entity/date_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/price_entity/price_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_resource_entity/series_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/text_object_entity/text_object_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

part 'comic_entity.g.dart';

@HiveType(typeId: HiveIds.comicEntityId)
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

  @HiveField(0)
  final int id;
  @HiveField(1)
  final num digitalId;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final num issueNumber;
  @HiveField(4)
  final String variantDescription;
  @HiveField(5)
  final String description;
  @HiveField(6)
  final String modified;
  @HiveField(7)
  final String isbn;
  @HiveField(8)
  final String upc;
  @HiveField(9)
  final String diamondCode;
  @HiveField(10)
  final String ean;
  @HiveField(11)
  final String issn;
  @HiveField(12)
  final String format;
  @HiveField(13)
  final num pageCount;
  @HiveField(14)
  final List<TextObjectEntity> textObjects;
  @HiveField(15)
  final String resourceUri;
  @HiveField(16)
  final List<UrlEntity> urls;
  @HiveField(17)
  final SeriesResourceEntity series;
  @HiveField(18)
  final List<SeriesResourceEntity> variants;
  @HiveField(19)
  final List<dynamic> collections;
  @HiveField(20)
  final List<dynamic> collectedIssues;
  @HiveField(21)
  final List<DateEntity> dates;
  @HiveField(22)
  final List<PriceEntity> prices;
  @HiveField(23)
  final ThumbnailEntity thumbnail;
  @HiveField(24)
  final List<ThumbnailEntity> images;
  @HiveField(25)
  final CreatorsEntity creators;
  @HiveField(26)
  final CharacterResourceEntity characters;
  @HiveField(27)
  final StoryResourceEntity stories;
  @HiveField(28)
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
