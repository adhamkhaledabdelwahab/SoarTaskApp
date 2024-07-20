import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/creators_item_entity/creators_item_entity.dart';

part 'creator_item_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class CreatorsItemModel extends Equatable {
  const CreatorsItemModel({
    required this.resourceUri,
    required this.name,
    required this.role,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  final String? role;
  static const String roleKey = "role";

  factory CreatorsItemModel.fromJson(Map<String, dynamic> json) =>
      _$CreatorsItemModelFromJson(json);

  CreatorsItemEntity get toEntity => CreatorsItemEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
        role: role ?? "",
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
        role,
      ];
}
