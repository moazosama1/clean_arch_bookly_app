class BookEntities {
  final String? bookId;
  final String? imagePath;
  final String? authorName;
  final String? title;
  final num? price;
  final num? rating;
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
