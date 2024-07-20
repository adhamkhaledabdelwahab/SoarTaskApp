import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/creator_model/creator_item_model/creator_item_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_entity/creators_entity.dart';

part 'creator_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class CreatorsModel extends Equatable {
  const CreatorsModel({
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

  final List<CreatorsItemModel>? items;
  static const String itemsKey = "items";

  final num? returned;
  static const String returnedKey = "returned";

  factory CreatorsModel.fromJson(Map<String, dynamic> json) =>
      _$CreatorsModelFromJson(json);

  factory CreatorsModel.empty() => const CreatorsModel(
        available: null,
        collectionUri: null,
        items: null,
        returned: null,
      );

  CreatorsEntity get toEntity => CreatorsEntity(
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
}
