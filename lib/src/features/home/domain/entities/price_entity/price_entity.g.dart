// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PriceEntityAdapter extends TypeAdapter<PriceEntity> {
  @override
  final int typeId = 17;

  @override
  PriceEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PriceEntity(
      type: fields[0] as String,
      price: fields[1] as num,
    );
  }

  @override
  void write(BinaryWriter writer, PriceEntity obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
