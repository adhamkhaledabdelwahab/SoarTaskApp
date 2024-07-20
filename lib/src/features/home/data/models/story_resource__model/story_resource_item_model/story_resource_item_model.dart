import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/story_resource_item_entity/story_resource_item_entity.dart';

part 'story_resource_item_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class StoryResourceItemModel extends Equatable {
  const StoryResourceItemModel({
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

  factory StoryResourceItemModel.fromJson(Map<String, dynamic> json) =>
      _$StoryResourceItemModelFromJson(json);

  StoryResourceItemEntity get toEntity => StoryResourceItemEntity(
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
