import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/url_entity/url_entity.dart';

part 'url_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class UrlModel extends Equatable {
  const UrlModel({
    required this.type,
    required this.url,
  });

  final String? type;
  static const String typeKey = "type";

  final String? url;
  static const String urlKey = "url";

  factory UrlModel.fromJson(Map<String, dynamic> json) =>
      _$UrlModelFromJson(json);

  UrlEntity get toEntity => UrlEntity(
        type: type ?? "",
        url: url ?? "",
      );

  @override
  List<Object?> get props => [
        type,
        url,
      ];
}
