import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/story_resource__model/story_resource_item_model/story_resource_item_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_entity/story_resource_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_item_entity/story_resource_item_entity.dart';

part 'story_resource_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class StoryResourceModel extends Equatable {
  const StoryResourceModel({
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

  final List<StoryResourceItemModel>? items;
  static const String itemsKey = "items";

  final num? returned;
  static const String returnedKey = "returned";

  factory StoryResourceModel.fromJson(Map<String, dynamic> json) =>
      _$StoryResourceModelFromJson(json);

  factory StoryResourceModel.empty() => const StoryResourceModel(
        available: null,
        collectionUri: null,
        items: null,
        returned: null,
      );

  StoryResourceEntity get toEntity => StoryResourceEntity(
        available: available ?? 0,
        collectionUri: collectionUri ?? "",
        items: items?.map((e) => e.toEntity).toList() ??
            <StoryResourceItemEntity>[],
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
