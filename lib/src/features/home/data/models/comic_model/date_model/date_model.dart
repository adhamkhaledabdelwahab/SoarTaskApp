import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soar_task_app/src/features/home/domain/entities/date_entity/date_entity.dart';

part 'date_model.g.dart';

@JsonSerializable(createToJson: false, includeIfNull: true)
class DateModel extends Equatable {
  const DateModel({
    required this.type,
    required this.date,
  });

  final String? type;
  static const String typeKey = "type";

  final String? date;
  static const String dateKey = "date";

  factory DateModel.fromJson(Map<String, dynamic> json) =>
      _$DateModelFromJson(json);

  DateEntity get toEntity => DateEntity(
        type: type ?? "",
        date: date ?? "",
      );

  @override
  List<Object?> get props => [
        type,
        date,
      ];
}
