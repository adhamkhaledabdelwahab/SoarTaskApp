// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterResourceModel _$CharacterResourceModelFromJson(
        Map<String, dynamic> json) =>
    CharacterResourceModel(
      available: json['available'] as num?,
      collectionUri: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SeriesResourceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as num?,
    );
