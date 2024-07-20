import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_item_entity/story_resource_item_entity.dart';

class StoryResourceEntity extends Equatable {
  const StoryResourceEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num available;
  final String collectionUri;
  final List<StoryResourceItemEntity> items;
  final num returned;

  @override
  List<Object> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
