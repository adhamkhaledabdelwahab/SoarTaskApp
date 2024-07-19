import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/data/models/characters_response_data_model/characters_response_data_model.dart';
import 'package:soar_task_app/src/features/home/domain/entities/characters_response_entity/characters_response_entity.dart';

part 'characters_response_model.g.dart';

@JsonSerializable(createToJson: false)
class CharactersResponseModel extends Equatable {
  const CharactersResponseModel({
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

  final CharacterResponseDataModel? data;
  static const String dataKey = "data";

  factory CharactersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseModelFromJson(json);

  CharactersResponseEntity get toEntity => CharactersResponseEntity(
        code: code ?? 0,
        status: status ?? "",
        copyright: copyright ?? "",
        attributionText: attributionText ?? "",
        attributionHtml: attributionHtml ?? "",
        etag: etag ?? "",
        data: data?.toEntity ?? CharacterResponseDataModel.empty().toEntity,
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
