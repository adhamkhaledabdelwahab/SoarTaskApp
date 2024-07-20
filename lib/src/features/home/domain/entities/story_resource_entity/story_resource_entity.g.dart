// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_resource_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoryResourceEntityAdapter extends TypeAdapter<StoryResourceEntity> {
  @override
  final int typeId = 20;

  @override
  StoryResourceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoryResourceEntity(
      available: fields[0] as num,
      collectionUri: fields[1] as String,
      items: (fields[2] as List).cast<StoryResourceItemEntity>(),
      returned: fields[3] as num,
    );
  }

  @override
  void write(BinaryWriter writer, StoryResourceEntity obj) {
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
      other is StoryResourceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
