import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/comic_item_entity/comics_item_entity.dart';

part 'comics_item_model.g.dart';

@JsonSerializable(createToJson: false)
class ComicsItemModel extends Equatable {
  const ComicsItemModel({
    required this.resourceUri,
    required this.name,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  factory ComicsItemModel.fromJson(Map<String, dynamic> json) =>
      _$ComicsItemModelFromJson(json);

  ComicsItemEntity get toEntity => ComicsItemEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
      ];
}
