import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'series_resource_entity.g.dart';

@HiveType(typeId: HiveIds.seriesResourceEntityId)
class SeriesResourceEntity extends Equatable {
  const SeriesResourceEntity({
    required this.resourceUri,
    required this.name,
  });

  @HiveField(0)
  final String resourceUri;
  @HiveField(1)
  final String name;

  @override
  List<Object> get props => [
        resourceUri,
        name,
      ];
}
