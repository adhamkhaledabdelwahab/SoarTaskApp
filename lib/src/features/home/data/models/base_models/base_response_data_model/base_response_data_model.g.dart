// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseDataModel<T> _$BaseResponseDataModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponseDataModel<T>(
      offset: json['offset'] as num?,
      limit: json['limit'] as num?,
      total: json['total'] as num?,
      count: json['count'] as num?,
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );
