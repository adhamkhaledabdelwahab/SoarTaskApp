// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComicEntityAdapter extends TypeAdapter<ComicEntity> {
  @override
  final int typeId = 8;

  @override
  ComicEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ComicEntity(
      id: fields[0] as int,
      digitalId: fields[1] as num,
      title: fields[2] as String,
      issueNumber: fields[3] as num,
      variantDescription: fields[4] as String,
      description: fields[5] as String,
      modified: fields[6] as String,
      isbn: fields[7] as String,
      upc: fields[8] as String,
      diamondCode: fields[9] as String,
      ean: fields[10] as String,
      issn: fields[11] as String,
      format: fields[12] as String,
      pageCount: fields[13] as num,
      textObjects: (fields[14] as List).cast<TextObjectEntity>(),
      resourceUri: fields[15] as String,
      urls: (fields[16] as List).cast<UrlEntity>(),
      series: fields[17] as SeriesResourceEntity,
      variants: (fields[18] as List).cast<SeriesResourceEntity>(),
      collections: (fields[19] as List).cast<dynamic>(),
      collectedIssues: (fields[20] as List).cast<dynamic>(),
      dates: (fields[21] as List).cast<DateEntity>(),
      prices: (fields[22] as List).cast<PriceEntity>(),
      thumbnail: fields[23] as ThumbnailEntity,
      images: (fields[24] as List).cast<ThumbnailEntity>(),
      creators: fields[25] as CreatorsEntity,
      characters: fields[26] as CharacterResourceEntity,
      stories: fields[27] as StoryResourceEntity,
      events: fields[28] as CharacterResourceEntity,
    );
  }

  @override
  void write(BinaryWriter writer, ComicEntity obj) {
    writer
      ..writeByte(29)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.digitalId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.issueNumber)
      ..writeByte(4)
      ..write(obj.variantDescription)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.modified)
      ..writeByte(7)
      ..write(obj.isbn)
      ..writeByte(8)
      ..write(obj.upc)
      ..writeByte(9)
      ..write(obj.diamondCode)
      ..writeByte(10)
      ..write(obj.ean)
      ..writeByte(11)
      ..write(obj.issn)
      ..writeByte(12)
      ..write(obj.format)
      ..writeByte(13)
      ..write(obj.pageCount)
      ..writeByte(14)
      ..write(obj.textObjects)
      ..writeByte(15)
      ..write(obj.resourceUri)
      ..writeByte(16)
      ..write(obj.urls)
      ..writeByte(17)
      ..write(obj.series)
      ..writeByte(18)
      ..write(obj.variants)
      ..writeByte(19)
      ..write(obj.collections)
      ..writeByte(20)
      ..write(obj.collectedIssues)
      ..writeByte(21)
      ..write(obj.dates)
      ..writeByte(22)
      ..write(obj.prices)
      ..writeByte(23)
      ..write(obj.thumbnail)
      ..writeByte(24)
      ..write(obj.images)
      ..writeByte(25)
      ..write(obj.creators)
      ..writeByte(26)
      ..write(obj.characters)
      ..writeByte(27)
      ..write(obj.stories)
      ..writeByte(28)
      ..write(obj.events);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComicEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
