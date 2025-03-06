import 'package:bookly/Features/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entities.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  @override
  Future<List<BookEntities>> fetchFutureBooks() {
    // TODO: implement fetchFutureBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntities>> fetchFutureNewestBooks() {
    // TODO: implement fetchFutureNewestBooks
    throw UnimplementedError();
  }
}
