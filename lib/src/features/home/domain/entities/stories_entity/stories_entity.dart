import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/stories_item_entity/stories_item_entity.dart';

class StoriesEntity extends Equatable {
  const StoriesEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num available;
  final String collectionUri;
  final List<StoriesItemEntity> items;
  final num returned;

  @override
  List<Object?> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
