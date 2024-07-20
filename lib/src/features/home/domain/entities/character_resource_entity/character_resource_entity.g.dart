// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_resource_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterResourceEntityAdapter
    extends TypeAdapter<CharacterResourceEntity> {
  @override
  final int typeId = 7;

  @override
  CharacterResourceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterResourceEntity(
      available: fields[0] as num,
      collectionUri: fields[1] as String,
      items: (fields[2] as List).cast<SeriesResourceEntity>(),
      returned: fields[3] as num,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterResourceEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.available)
      ..writeByte(1)
      ..write(obj.collectionUri)
      ..writeByte(2)
      ..write(obj.items)
      ..writeByte(3)
      ..write(obj.returned);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterResourceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
