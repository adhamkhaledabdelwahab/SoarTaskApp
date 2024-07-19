// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoriesModel _$StoriesModelFromJson(Map<String, dynamic> json) => StoriesModel(
      available: json['available'] as num?,
      collectionUri: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => StoriesItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as num?,
    );
