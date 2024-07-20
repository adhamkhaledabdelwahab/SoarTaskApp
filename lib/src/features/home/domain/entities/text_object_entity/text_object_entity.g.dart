// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_object_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TextObjectEntityAdapter extends TypeAdapter<TextObjectEntity> {
  @override
  final int typeId = 22;

  @override
  TextObjectEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TextObjectEntity(
      type: fields[0] as String,
      language: fields[1] as String,
      text: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TextObjectEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.language)
      ..writeByte(2)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextObjectEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
