// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComicsModel _$ComicsModelFromJson(Map<String, dynamic> json) => ComicsModel(
      available: json['available'] as num?,
      collectionUri: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ComicsItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as num?,
    );
