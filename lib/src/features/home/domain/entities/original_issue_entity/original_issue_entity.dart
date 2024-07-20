import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part "original_issue_entity.g.dart";

@HiveType(typeId: HiveIds.originalIssueEntityId)
class OriginalIssueEntity extends Equatable {
  const OriginalIssueEntity({
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
