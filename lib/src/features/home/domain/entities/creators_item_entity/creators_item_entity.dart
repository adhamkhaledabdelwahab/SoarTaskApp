import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'creators_item_entity.g.dart';

@HiveType(typeId: HiveIds.creatorsItemEntityId)
class CreatorsItemEntity extends Equatable {
  const CreatorsItemEntity({
    required this.resourceUri,
    required this.name,
    required this.role,
  });

  @HiveField(0)
  final String resourceUri;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String role;

  @override
  List<Object> get props => [
        resourceUri,
        name,
        role,
      ];
}
