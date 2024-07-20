import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/next_entity/next_entity.dart';

part 'next_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class NextModel extends Equatable {
  const NextModel({
    required this.resourceUri,
    required this.name,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  factory NextModel.fromJson(Map<String, dynamic> json) =>
      _$NextModelFromJson(json);

  NextEntity get toEntity => NextEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
      );

  factory NextModel.empty() => const NextModel(
        resourceUri: null,
        name: null,
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
      ];
}
