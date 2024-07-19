import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable(includeIfNull: false)
class ErrorModel {
  bool success;
  String message;

  ErrorModel({
    required this.success,
    required this.message,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
