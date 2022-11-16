// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_fact_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveFactModelAdapter extends TypeAdapter<HiveFactModel> {
  @override
  final int typeId = 0;

  @override
  HiveFactModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveFactModel(
      fact: fields[0] as String,
      dateTime: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, HiveFactModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.fact)
      ..writeByte(1)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveFactModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
