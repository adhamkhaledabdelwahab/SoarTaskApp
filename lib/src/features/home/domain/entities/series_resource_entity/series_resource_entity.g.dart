// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_resource_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeriesResourceEntityAdapter extends TypeAdapter<SeriesResourceEntity> {
  @override
  final int typeId = 23;

  @override
  SeriesResourceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeriesResourceEntity(
      resourceUri: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SeriesResourceEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.resourceUri)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeriesResourceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
