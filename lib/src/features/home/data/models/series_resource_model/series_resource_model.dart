import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/series_resource_entity/series_resource_entity.dart';

part 'series_resource_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class SeriesResourceModel extends Equatable {
  const SeriesResourceModel({
    required this.resourceUri,
    required this.name,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  factory SeriesResourceModel.fromJson(Map<String, dynamic> json) =>
      _$SeriesResourceModelFromJson(json);

  SeriesResourceEntity get toEntity => SeriesResourceEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
      );

  factory SeriesResourceModel.empty() => const SeriesResourceModel(
        resourceUri: null,
        name: null,
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
      ];
}
