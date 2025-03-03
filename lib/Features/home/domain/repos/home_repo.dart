import 'package:bookly/Features/home/domain/entities/book_entities.dart';

abstract class HomeRepo {
  Future<List<BookEntities>> fetchFutureBooks();
  Future<List<BookEntities>> fetchFutureNewestBooks();
}
