import 'package:equatable/equatable.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';

class CharacterResponseDataEntity extends Equatable {
  const CharacterResponseDataEntity({
    required this.offset,
    required this.limit,
    required this.total,
    required this.count,
    required this.results,
  });

  final num offset;
  final num limit;
  final num total;
  final num count;
  final List<CharacterEntity> results;

  @override
  List<Object?> get props => [
        offset,
        limit,
        total,
        count,
        results,
      ];
}
