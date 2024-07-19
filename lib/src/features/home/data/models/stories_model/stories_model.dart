import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/stories_item_model/stories_item_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/stories_entity/stories_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/stories_item_entity/stories_item_entity.dart';

part 'stories_model.g.dart';

@JsonSerializable(createToJson: false)
class StoriesModel extends Equatable {
  const StoriesModel({
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

  final List<StoriesItemModel>? items;
  static const String itemsKey = "items";

  final num? returned;
  static const String returnedKey = "returned";

  factory StoriesModel.fromJson(Map<String, dynamic> json) =>
      _$StoriesModelFromJson(json);

  factory StoriesModel.empty() => const StoriesModel(
        available: null,
        collectionUri: null,
        items: null,
        returned: null,
      );

  StoriesEntity get toEntity => StoriesEntity(
        available: available ?? 0,
        collectionUri: collectionUri ?? "",
        items: items?.map((e) => e.toEntity).toList() ?? <StoriesItemEntity>[],
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
