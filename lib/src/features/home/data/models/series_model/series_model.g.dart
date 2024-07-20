// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesModel _$SeriesModelFromJson(Map<String, dynamic> json) => SeriesModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      resourceUri: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      startYear: json['startYear'] as num?,
      endYear: json['endYear'] as num?,
      rating: json['rating'] as String?,
      type: json['type'] as String?,
      modified: json['modified'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : ThumbnailModel.fromJson(json['thumbnail'] as Map<String, dynamic>),
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
      comics: json['comics'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['comics'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['events'] as Map<String, dynamic>),
      next: json['next'] == null
          ? null
          : NextModel.fromJson(json['next'] as Map<String, dynamic>),
      previous: json['previous'] == null
          ? null
          : NextModel.fromJson(json['previous'] as Map<String, dynamic>),
    );
