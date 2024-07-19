import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/comic_item_model/comics_item_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_item_entity/comics_item_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comics_entity/comics_entity.dart';

part 'comics_model.g.dart';

@JsonSerializable(createToJson: false)
class ComicsModel extends Equatable {
  const ComicsModel({
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

  final List<ComicsItemModel>? items;
  static const String itemsKey = "items";

  final num? returned;
  static const String returnedKey = "returned";

  factory ComicsModel.fromJson(Map<String, dynamic> json) =>
      _$ComicsModelFromJson(json);

  factory ComicsModel.empty() => const ComicsModel(
        available: null,
        collectionUri: null,
        items: null,
        returned: null,
      );

  ComicsEntity get toEntity => ComicsEntity(
        available: available ?? 0,
        collectionUri: collectionUri ?? "",
        items: items?.map((e) => e.toEntity).toList() ?? <ComicsItemEntity>[],
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
