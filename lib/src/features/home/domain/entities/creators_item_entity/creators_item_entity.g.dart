// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creators_item_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CreatorsItemEntityAdapter extends TypeAdapter<CreatorsItemEntity> {
  @override
  final int typeId = 12;

  @override
  CreatorsItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CreatorsItemEntity(
      resourceUri: fields[0] as String,
      name: fields[1] as String,
      role: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CreatorsItemEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.resourceUri)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.role);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatorsItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
