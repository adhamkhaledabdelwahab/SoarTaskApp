// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterResponseDataModel _$CharacterResponseDataModelFromJson(
        Map<String, dynamic> json) =>
    CharacterResponseDataModel(
      offset: json['offset'] as num?,
      limit: json['limit'] as num?,
      total: json['total'] as num?,
      count: json['count'] as num?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
