// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_resource_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComicResourceEntityAdapter extends TypeAdapter<ComicResourceEntity> {
  @override
  final int typeId = 9;

  @override
  ComicResourceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ComicResourceEntity(
      available: fields[0] as num,
      collectionUri: fields[1] as String,
      items: (fields[2] as List).cast<ComicResourceItemEntity>(),
      returned: fields[3] as num,
    );
  }

  @override
  void write(BinaryWriter writer, ComicResourceEntity obj) {
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
      other is ComicResourceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
