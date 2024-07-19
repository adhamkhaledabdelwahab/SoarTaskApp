import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_item_entity/comics_item_entity.dart';

class ComicsEntity extends Equatable {
  const ComicsEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num available;
  final String collectionUri;
  final List<ComicsItemEntity> items;
  final num returned;

  @override
  List<Object?> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
