import 'package:bookly/Features/home/domain/entities/book_entities.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntities>> fetchFutureBooks();
  Future<List<BookEntities>> fetchFutureNewestBooks();
}
