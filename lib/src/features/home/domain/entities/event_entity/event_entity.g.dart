// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EventEntityAdapter extends TypeAdapter<EventEntity> {
  @override
  final int typeId = 14;

  @override
  EventEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EventEntity(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      resourceUri: fields[3] as String,
      urls: (fields[4] as List).cast<UrlEntity>(),
      modified: fields[5] as String,
      start: fields[6] as DateTime?,
      end: fields[7] as DateTime?,
      thumbnail: fields[8] as ThumbnailEntity,
      creators: fields[9] as CreatorsEntity,
      characters: fields[10] as CharacterResourceEntity,
      stories: fields[11] as StoryResourceEntity,
      comics: fields[12] as CharacterResourceEntity,
      series: fields[13] as CharacterResourceEntity,
      next: fields[14] as NextEntity,
      previous: fields[15] as NextEntity,
    );
  }

  @override
  void write(BinaryWriter writer, EventEntity obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.resourceUri)
      ..writeByte(4)
      ..write(obj.urls)
      ..writeByte(5)
      ..write(obj.modified)
      ..writeByte(6)
      ..write(obj.start)
      ..writeByte(7)
      ..write(obj.end)
      ..writeByte(8)
      ..write(obj.thumbnail)
      ..writeByte(9)
      ..write(obj.creators)
      ..writeByte(10)
      ..write(obj.characters)
      ..writeByte(11)
      ..write(obj.stories)
      ..writeByte(12)
      ..write(obj.comics)
      ..writeByte(13)
      ..write(obj.series)
      ..writeByte(14)
      ..write(obj.next)
      ..writeByte(15)
      ..write(obj.previous);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
