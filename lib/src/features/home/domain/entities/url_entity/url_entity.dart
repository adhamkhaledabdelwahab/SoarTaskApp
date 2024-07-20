import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'url_entity.g.dart';

@HiveType(typeId: HiveIds.urlEntityId)
class UrlEntity extends Equatable {
  const UrlEntity({
    required this.type,
    required this.url,
  });

  @HiveField(0)
  final String type;
  @HiveField(1)
  final String url;

  @override
  List<Object> get props => [
        type,
        url,
      ];
}
