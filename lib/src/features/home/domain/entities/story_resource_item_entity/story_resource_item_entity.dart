import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'story_resource_item_entity.g.dart';

@HiveType(typeId: HiveIds.storyResourceItemEntityId)
class StoryResourceItemEntity extends Equatable {
  const StoryResourceItemEntity({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  @HiveField(0)
  final String resourceUri;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String type;

  @override
  List<Object> get props => [
        resourceUri,
        name,
        type,
      ];
}
