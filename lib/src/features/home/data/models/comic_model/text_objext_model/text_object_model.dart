import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/text_object_entity/text_object_entity.dart';

part 'text_object_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class TextObjectModel extends Equatable {
  const TextObjectModel({
    required this.type,
    required this.language,
    required this.text,
  });

  final String? type;
  static const String typeKey = "type";

  final String? language;
  static const String languageKey = "language";

  final String? text;
  static const String textKey = "text";

  factory TextObjectModel.fromJson(Map<String, dynamic> json) =>
      _$TextObjectModelFromJson(json);

  TextObjectEntity get toEntity => TextObjectEntity(
        type: type ?? "",
        language: language ?? "",
        text: text ?? "",
      );

  @override
  List<Object?> get props => [
        type,
        language,
        text,
      ];
}
