import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';

part 'characters_use_case_params.g.dart';

@HiveType(typeId: HiveIds.charactersUseCaseParamsId)
class CharactersUseCaseParams {
  @HiveField(0)
  final int limit;
  @HiveField(1)
  final int offset;

  CharactersUseCaseParams({
    this.limit = 20,
    required this.offset,
  });

  CharactersUseCaseParams copyWith({
    int? limit,
    int? offset,
  }) {
    return CharactersUseCaseParams(
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
    );
  }

  @override
  String toString() => "limit: $limit, offset: $offset";
}
