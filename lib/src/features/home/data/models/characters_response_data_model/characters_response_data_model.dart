import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/character_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/characters_response_data_entity/characters_response_data_entity.dart';

part 'characters_response_data_model.g.dart';

@JsonSerializable(createToJson: false)
class CharacterResponseDataModel extends Equatable {
  const CharacterResponseDataModel({
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

  final List<CharacterModel>? results;
  static const String resultsKey = "results";

  factory CharacterResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseDataModelFromJson(json);

  factory CharacterResponseDataModel.empty() {
    return const CharacterResponseDataModel(
      offset: null,
      limit: null,
      total: null,
      count: null,
      results: null,
    );
  }

  CharacterResponseDataEntity get toEntity => CharacterResponseDataEntity(
        offset: offset ?? 0,
        limit: limit ?? 0,
        total: total ?? 0,
        count: count ?? 0,
        results: results?.map((e) => e.toEntity).toList() ?? [],
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
