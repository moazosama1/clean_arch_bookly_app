// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_entities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntitiesAdapter extends TypeAdapter<BookEntities> {
  @override
  final int typeId = 0;

  @override
  BookEntities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntities(
      bookId: fields[0] as String?,
      imagePath: fields[1] as String?,
      authorName: fields[2] as String?,
      title: fields[3] as String?,
      price: fields[4] as num?,
      rating: fields[5] as num?,
      countRating: fields[6] as num?,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntities obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.bookId)
      ..writeByte(1)
      ..write(obj.imagePath)
      ..writeByte(2)
      ..write(obj.authorName)
      ..writeByte(3)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.rating)
      ..writeByte(6)
      ..write(obj.countRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
