import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_resource_entity/series_resource_entity.dart';

class CharacterResourceEntity extends Equatable {
  const CharacterResourceEntity({
    required this.available,
    required this.collectionUri,
    required this.items,
    required this.returned,
  });

  final num available;
  final String collectionUri;
  final List<SeriesResourceEntity> items;
  final num returned;

  @override
  List<Object> get props => [
        available,
        collectionUri,
        items,
        returned,
      ];
}
