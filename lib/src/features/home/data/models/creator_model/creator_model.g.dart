// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatorsModel _$CreatorsModelFromJson(Map<String, dynamic> json) =>
    CreatorsModel(
      available: json['available'] as num?,
      collectionUri: json['collectionURI'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CreatorsItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as num?,
    );
