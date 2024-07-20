// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryResourceModel _$StoryResourceModelFromJson(Map<String, dynamic> json) =>
    StoryResourceModel(
      available: json['available'] as num?,
      collectionUri: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map(
              (e) => StoryResourceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as num?,
    );
