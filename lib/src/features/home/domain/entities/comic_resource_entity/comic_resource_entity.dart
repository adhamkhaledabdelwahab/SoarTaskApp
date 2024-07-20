import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_item_entity/comic_resource_item_entity.dart';

part 'comic_resource_entity.g.dart';

@HiveType(typeId: HiveIds.comicResourceEntityId)
class ComicResourceEntity extends Equatable {
  const ComicResourceEntity({
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
  final List<ComicResourceItemEntity> items;
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
