import 'package:hive/hive.dart';
part 'book_entities.g.dart';

@HiveType(typeId: 0)
class BookEntities {
  @HiveField(0)
  final String? bookId;
  @HiveField(1)
  final String? imagePath;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final String? title;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;
  @HiveField(6)
  final num? countRating;

  BookEntities(
      {required this.bookId,
      required this.imagePath,
      required this.authorName,
      required this.title,
      required this.price,
      required this.rating,
      required this.countRating});
}
