import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/series_resource_model/series_resource_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_resource_entity/character_resource_entity.dart';

part 'character_resource_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class CharacterResourceModel extends Equatable {
  const CharacterResourceModel({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num? available;
  static const String availableKey = "available";

  @JsonKey(name: 'collectionURI')
  final String? collectionUri;
  static const String collectionUriKey = "collectionURI";

  final List<SeriesResourceModel>? items;
  static const String itemsKey = "items";

  final num? returned;
  static const String returnedKey = "returned";

  factory CharacterResourceModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterResourceModelFromJson(json);

  CharacterResourceEntity get toEntity => CharacterResourceEntity(
        available: available ?? 0,
        collectionUri: collectionUri ?? "",
        items: items?.map((e) => e.toEntity).toList() ?? [],
        returned: returned ?? 0,
      );

  @override
  List<Object?> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];

  factory CharacterResourceModel.empty() => const CharacterResourceModel(
        available: null,
        collectionUri: null,
        items: null,
        returned: null,
      );
}
