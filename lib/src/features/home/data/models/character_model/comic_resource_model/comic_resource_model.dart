import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/character_model/comic_resource_model/comic_resource_item_model/comic_resource_item_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_entity/comic_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_item_entity/comic_resource_item_entity.dart';

part 'comic_resource_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class ComicResourceModel extends Equatable {
  const ComicResourceModel({
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

  final List<ComicResourceItemModel>? items;
  static const String itemsKey = "items";

  final num? returned;
  static const String returnedKey = "returned";

  factory ComicResourceModel.fromJson(Map<String, dynamic> json) =>
      _$ComicResourceModelFromJson(json);

  factory ComicResourceModel.empty() => const ComicResourceModel(
        available: null,
        collectionUri: null,
        items: null,
        returned: null,
      );

  ComicResourceEntity get toEntity => ComicResourceEntity(
        available: available ?? 0,
        collectionUri: collectionUri ?? "",
        items: items?.map((e) => e.toEntity).toList() ??
            <ComicResourceItemEntity>[],
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
