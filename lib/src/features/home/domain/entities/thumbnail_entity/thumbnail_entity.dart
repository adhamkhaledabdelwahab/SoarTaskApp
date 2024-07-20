import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'thumbnail_entity.g.dart';

@HiveType(typeId: HiveIds.thumbnailEntityId)
class ThumbnailEntity extends Equatable {
  const ThumbnailEntity({
    required this.path,
    required this.extension,
  });

  @HiveField(0)
  final String path;
  @HiveField(1)
  final String extension;

  String get imageUrl => "$path.$extension";

  @override
  List<Object> get props => [
        path,
        extension,
      ];
}
