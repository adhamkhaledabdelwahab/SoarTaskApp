// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersResponseModel _$CharactersResponseModelFromJson(
        Map<String, dynamic> json) =>
    CharactersResponseModel(
      code: json['code'] as num?,
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      attributionText: json['attributionText'] as String?,
      attributionHtml: json['attributionHTML'] as String?,
      etag: json['etag'] as String?,
      data: json['data'] == null
          ? null
          : CharacterResponseDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );
