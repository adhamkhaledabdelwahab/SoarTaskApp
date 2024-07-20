// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComicModel _$ComicModelFromJson(Map<String, dynamic> json) => ComicModel(
      id: (json['id'] as num?)?.toInt(),
      digitalId: json['digitalId'] as num?,
      title: json['title'] as String?,
      issueNumber: json['issueNumber'] as num?,
      variantDescription: json['variantDescription'] as String?,
      description: json['description'] as String?,
      modified: json['modified'] as String?,
      isbn: json['isbn'] as String?,
      upc: json['upc'] as String?,
      diamondCode: json['diamondCode'] as String?,
      ean: json['ean'] as String?,
      issn: json['issn'] as String?,
      format: json['format'] as String?,
      pageCount: json['pageCount'] as num?,
      textObjects: (json['textObjects'] as List<dynamic>?)
          ?.map((e) => TextObjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceUri: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      series: json['series'] == null
          ? null
          : SeriesResourceModel.fromJson(
              json['series'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => SeriesResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      collections: json['collections'] as List<dynamic>?,
      collectedIssues: json['collectedIssues'] as List<dynamic>?,
      dates: (json['dates'] as List<dynamic>?)
          ?.map((e) => DateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => PriceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnail: json['thumbnail'] == null
          ? null
          : ThumbnailModel.fromJson(json['thumbnail'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ThumbnailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      creators: json['creators'] == null
          ? null
          : CreatorsModel.fromJson(json['creators'] as Map<String, dynamic>),
      characters: json['characters'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['characters'] as Map<String, dynamic>),
      stories: json['stories'] == null
          ? null
          : StoryResourceModel.fromJson(
              json['stories'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['events'] as Map<String, dynamic>),
    );
