// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeriesEntityAdapter extends TypeAdapter<SeriesEntity> {
  @override
  final int typeId = 18;

  @override
  SeriesEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SeriesEntity(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      resourceUri: fields[3] as String,
      urls: (fields[4] as List).cast<UrlEntity>(),
      startYear: fields[5] as num,
      endYear: fields[6] as num,
      rating: fields[7] as String,
      type: fields[8] as String,
      modified: fields[9] as String,
      thumbnail: fields[10] as ThumbnailEntity,
      creators: fields[11] as CreatorsEntity,
      characters: fields[12] as CharacterResourceEntity,
      stories: fields[13] as StoryResourceEntity,
      comics: fields[14] as CharacterResourceEntity,
      events: fields[15] as CharacterResourceEntity,
      next: fields[16] as NextEntity,
      previous: fields[17] as NextEntity,
    );
  }

  @override
  void write(BinaryWriter writer, SeriesEntity obj) {
    writer
      ..writeByte(18)
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
      ..write(obj.startYear)
      ..writeByte(6)
      ..write(obj.endYear)
      ..writeByte(7)
      ..write(obj.rating)
      ..writeByte(8)
      ..write(obj.type)
      ..writeByte(9)
      ..write(obj.modified)
      ..writeByte(10)
      ..write(obj.thumbnail)
      ..writeByte(11)
      ..write(obj.creators)
      ..writeByte(12)
      ..write(obj.characters)
      ..writeByte(13)
      ..write(obj.stories)
      ..writeByte(14)
      ..write(obj.comics)
      ..writeByte(15)
      ..write(obj.events)
      ..writeByte(16)
      ..write(obj.next)
      ..writeByte(17)
      ..write(obj.previous);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeriesEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
