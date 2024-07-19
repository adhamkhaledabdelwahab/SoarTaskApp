// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterModel _$CharacterModelFromJson(Map<String, dynamic> json) =>
    CharacterModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      modified: json['modified'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : ThumbnailModel.fromJson(json['thumbnail'] as Map<String, dynamic>),
      resourceUri: json['resourceURI'] as String?,
      comics: json['comics'] == null
          ? null
          : ComicsModel.fromJson(json['comics'] as Map<String, dynamic>),
      series: json['series'] == null
          ? null
          : ComicsModel.fromJson(json['series'] as Map<String, dynamic>),
      stories: json['stories'] == null
          ? null
          : StoriesModel.fromJson(json['stories'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : ComicsModel.fromJson(json['events'] as Map<String, dynamic>),
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
