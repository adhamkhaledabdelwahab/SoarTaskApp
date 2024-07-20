// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_resource_item_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoryResourceItemEntityAdapter
    extends TypeAdapter<StoryResourceItemEntity> {
  @override
  final int typeId = 21;

  @override
  StoryResourceItemEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoryResourceItemEntity(
      resourceUri: fields[0] as String,
      name: fields[1] as String,
      type: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoryResourceItemEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.resourceUri)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoryResourceItemEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
