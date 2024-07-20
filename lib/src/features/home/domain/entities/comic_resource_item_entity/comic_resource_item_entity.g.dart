// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_resource_item_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComicResourceItemEntityAdapter
    extends TypeAdapter<ComicResourceItemEntity> {
  @override
  final int typeId = 10;

  @override
  ComicResourceItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ComicResourceItemEntity(
      resourceUri: fields[0] as String,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ComicResourceItemEntity obj) {
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
      other is ComicResourceItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
