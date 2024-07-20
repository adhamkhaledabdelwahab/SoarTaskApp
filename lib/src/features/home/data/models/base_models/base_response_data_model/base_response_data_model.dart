import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';

part 'base_response_data_model.g.dart';

@JsonSerializable(
  createToJson: false,
  includeIfNull: true,
  genericArgumentFactories: true,
)
class BaseResponseDataModel<T> extends Equatable {
  const BaseResponseDataModel({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  final num? offset;
  static const String offsetKey = "offset";

  final num? limit;
  static const String limitKey = "limit";

  final num? total;
  static const String totalKey = "total";

  final num? count;
  static const String countKey = "count";

  final List<T>? results;
  static const String resultsKey = "results";

  factory BaseResponseDataModel.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) create,
  ) =>
      _$BaseResponseDataModelFromJson(json, create);

  BaseResponseDataEntity<E> toEntity<E>(E Function(T) toEntity) =>
      BaseResponseDataEntity<E>(
        offset: offset ?? 0,
        limit: limit ?? 0,
        total: total ?? 0,
        count: count ?? 0,
        results: results?.map((e) => toEntity(e)).toList() ?? [],
      );

  @override
  List<Object?> get props => [
        offset,
        limit,
        total,
        count,
        results,
      ];
}
