// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      resourceUri: json['resourceURI'] as String?,
      urls: (json['urls'] as List<dynamic>?)
          ?.map((e) => UrlModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      modified: json['modified'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
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
      series: json['series'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['series'] as Map<String, dynamic>),
      next: json['next'] == null
          ? null
          : NextModel.fromJson(json['next'] as Map<String, dynamic>),
      previous: json['previous'] == null
          ? null
          : NextModel.fromJson(json['previous'] as Map<String, dynamic>),
    );
