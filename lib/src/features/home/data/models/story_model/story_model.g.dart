// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryModel _$StoryModelFromJson(Map<String, dynamic> json) => StoryModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      resourceUri: json['resourceURI'] as String?,
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
      series: json['series'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['series'] as Map<String, dynamic>),
      comics: json['comics'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['comics'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : CharacterResourceModel.fromJson(
              json['events'] as Map<String, dynamic>),
      originalIssue: json['originalIssue'] == null
          ? null
          : OriginalIssueModel.fromJson(
              json['originalIssue'] as Map<String, dynamic>),
    );
