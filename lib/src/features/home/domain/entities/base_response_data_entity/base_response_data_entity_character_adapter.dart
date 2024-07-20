import 'package:hive_flutter/hive_flutter.dart';
import 'package:soar_task_app/src/core/constants/hive_ids.dart';
import 'package:soar_task_app/src/features/home/domain/entities/base_response_data_entity/base_response_data_entity.dart';
import 'package:soar_task_app/src/features/home/domain/entities/character_entity/character_entity.dart';

class BaseResponseDataEntityCharacterAdapter
    extends TypeAdapter<BaseResponseDataEntity<CharacterEntity>> {
  @override
  final int typeId = HiveIds.baseResponseDataEntityCharacterId;

  @override
  BaseResponseDataEntity<CharacterEntity> read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseResponseDataEntity(
      offset: fields[0] as num,
      limit: fields[1] as num,
      total: fields[2] as num,
      count: fields[3] as num,
      results: (fields[4] as List).cast<CharacterEntity>(),
      characterId: fields[5] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, BaseResponseDataEntity<CharacterEntity> obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.offset)
      ..writeByte(1)
      ..write(obj.limit)
      ..writeByte(2)
      ..write(obj.total)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.results)
      ..writeByte(5)
      ..write(obj.characterId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseResponseDataEntityCharacterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
