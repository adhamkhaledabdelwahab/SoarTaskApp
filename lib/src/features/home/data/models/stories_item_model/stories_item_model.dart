import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/stories_item_entity/stories_item_entity.dart';

part 'stories_item_model.g.dart';

@JsonSerializable(createToJson: false)
class StoriesItemModel extends Equatable {
  const StoriesItemModel({
    required this.resourceUri,
    required this.name,
    required this.type,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  final String? type;
  static const String typeKey = "type";

  factory StoriesItemModel.fromJson(Map<String, dynamic> json) =>
      _$StoriesItemModelFromJson(json);

  StoriesItemEntity get toEntity => StoriesItemEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
        type: type ?? "",
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
        type,
      ];
}
