import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'date_entity.g.dart';

@HiveType(typeId: HiveIds.dateEntityId)
class DateEntity extends Equatable {
  const DateEntity({
    required this.type,
    required this.date,
  });

  @HiveField(0)
  final String type;
  @HiveField(1)
  final String date;

  @override
  List<Object?> get props => [
        type,
        date,
      ];
}
