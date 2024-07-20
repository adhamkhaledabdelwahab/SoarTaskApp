// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComicResourceModel _$ComicResourceModelFromJson(Map<String, dynamic> json) =>
    ComicResourceModel(
      available: json['available'] as num?,
      collectionUri: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map(
              (e) => ComicResourceItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as num?,
    );
