import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_item_entity/creators_item_entity.dart';

class CreatorsEntity extends Equatable {
  const CreatorsEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num available;
  final String collectionUri;
  final List<CreatorsItemEntity> items;
  final num returned;

  @override
  List<Object> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
