// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creators_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreatorsEntityAdapter extends TypeAdapter<CreatorsEntity> {
  @override
  final int typeId = 11;

  @override
  CreatorsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreatorsEntity(
      available: fields[0] as num,
      collectionUri: fields[1] as String,
      items: (fields[2] as List).cast<CreatorsItemEntity>(),
      returned: fields[3] as num,
    );
  }

  @override
  void write(BinaryWriter writer, CreatorsEntity obj) {
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
      other is CreatorsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
