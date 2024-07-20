import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/thumbnail_entity/thumbnail_entity.dart';

part 'thumbnail_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class ThumbnailModel extends Equatable {
  const ThumbnailModel({
    required this.path,
    required this.extension,
  });

  final String? path;
  static const String pathKey = "path";

  final String? extension;
  static const String extensionKey = "extension";

  factory ThumbnailModel.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailModelFromJson(json);

  factory ThumbnailModel.empty() => const ThumbnailModel(
        path: null,
        extension: null,
      );

  ThumbnailEntity get toEntity => ThumbnailEntity(
        path: path ?? "",
        extension: extension ?? "",
      );

  @override
  List<Object?> get props => [
        path,
        extension,
      ];
}
