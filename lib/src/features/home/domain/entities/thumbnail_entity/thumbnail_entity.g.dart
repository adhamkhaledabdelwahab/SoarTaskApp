// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ThumbnailEntityAdapter extends TypeAdapter<ThumbnailEntity> {
  @override
  final int typeId = 24;

  @override
  ThumbnailEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ThumbnailEntity(
      path: fields[0] as String,
      extension: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ThumbnailEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.path)
      ..writeByte(1)
      ..write(obj.extension);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThumbnailEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
