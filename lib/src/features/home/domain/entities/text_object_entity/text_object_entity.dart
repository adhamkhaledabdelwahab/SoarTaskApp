import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'text_object_entity.g.dart';

@HiveType(typeId: HiveIds.textObjectEntityId)
class TextObjectEntity extends Equatable {
  const TextObjectEntity({
    required this.type,
    required this.language,
    required this.text,
  });

  @HiveField(0)
  final String type;
  @HiveField(1)
  final String language;
  @HiveField(2)
  final String text;

  @override
  List<Object?> get props => [
        type,
        language,
        text,
      ];
}
