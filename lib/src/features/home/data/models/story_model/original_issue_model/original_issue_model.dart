import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/original_issue_entity/original_issue_entity.dart';

part 'original_issue_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class OriginalIssueModel extends Equatable {
  const OriginalIssueModel({
    required this.resourceUri,
    required this.name,
  });

  @JsonKey(name: 'resourceURI')
  final String? resourceUri;
  static const String resourceUriKey = "resourceURI";

  final String? name;
  static const String nameKey = "name";

  factory OriginalIssueModel.fromJson(Map<String, dynamic> json) =>
      _$OriginalIssueModelFromJson(json);

  OriginalIssueEntity get toEntity => OriginalIssueEntity(
        resourceUri: resourceUri ?? "",
        name: name ?? "",
      );

  factory OriginalIssueModel.empty() => const OriginalIssueModel(
        resourceUri: null,
        name: null,
      );

  @override
  List<Object?> get props => [
        resourceUri,
        name,
      ];
}
