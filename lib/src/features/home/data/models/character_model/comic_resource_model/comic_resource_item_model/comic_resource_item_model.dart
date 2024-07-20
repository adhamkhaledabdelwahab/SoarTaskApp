import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_resource_item_entity/comic_resource_item_entity.dart';

part 'comic_resource_item_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class ComicResourceItemModel extends Equatable {
  const ComicResourceItemModel({
    required this.resourceUri,
    required this.name,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  factory ComicResourceItemModel.fromJson(Map<String, dynamic> json) =>
      _$ComicResourceItemModelFromJson(json);

  ComicResourceItemEntity get toEntity => ComicResourceItemEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
      ];
}
