import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_item_entity/story_resource_item_entity.dart';

part 'story_resource_entity.g.dart';

@HiveType(typeId: HiveIds.storyResourceEntityId)
class StoryResourceEntity extends Equatable {
  const StoryResourceEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  @HiveField(0)
  final num available;
  @HiveField(1)
  final String collectionUri;
  @HiveField(2)
  final List<StoryResourceItemEntity> items;
  @HiveField(3)
  final num returned;

  @override
  List<Object> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
