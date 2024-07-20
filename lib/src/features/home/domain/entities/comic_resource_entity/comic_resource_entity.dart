import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_item_entity/comic_resource_item_entity.dart';

class ComicResourceEntity extends Equatable {
  const ComicResourceEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num available;
  final String collectionUri;
  final List<ComicResourceItemEntity> items;
  final num returned;

  @override
  List<Object> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
