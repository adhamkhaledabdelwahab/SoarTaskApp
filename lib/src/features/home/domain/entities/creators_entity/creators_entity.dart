import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_item_entity/creators_item_entity.dart';

part 'creators_entity.g.dart';

@HiveType(typeId: HiveIds.creatorsEntityId)
class CreatorsEntity extends Equatable {
  const CreatorsEntity({
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
  final List<CreatorsItemEntity> items;
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
