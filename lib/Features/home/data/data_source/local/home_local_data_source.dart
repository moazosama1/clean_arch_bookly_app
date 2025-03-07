import 'package:bookly/Features/home/domain/entities/book_entities.dart';

abstract class HomeLocalDataSource {
  List<BookEntities> fetchFutureBooks();
  List<BookEntities> fetchFutureNewestBooks();
}
