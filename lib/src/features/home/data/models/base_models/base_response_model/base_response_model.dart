import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(
  createToJson: false,
  includeIfNull: true,
  genericArgumentFactories: true,
)
class BaseResponseModel<T> extends Equatable {
  const BaseResponseModel({
    required this.code,
    required this.status,
    required this.copyright,
    required this.attributionText,
    required this.attributionHtml,
    required this.etag,
    required this.data,
  });

  final num? code;
  static const String codeKey = "code";

  final String? status;
  static const String statusKey = "status";

  final String? copyright;
  static const String copyrightKey = "copyright";

  final String? attributionText;
  static const String attributionTextKey = "attributionText";

  @JsonKey(name: 'attributionHTML')
  final String? attributionHtml;
  static const String attributionHtmlKey = "attributionHTML";

  final String? etag;
  static const String etagKey = "etag";

  final T? data;
  static const String dataKey = "data";

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic) create,
  ) =>
      _$BaseResponseModelFromJson(
        json,
        create,
      );

  @override
  List<Object?> get props => [
        code,
        status,
        copyright,
        attributionText,
        attributionHtml,
        etag,
        data,
      ];
}
