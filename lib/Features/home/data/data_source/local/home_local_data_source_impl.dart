import 'package:bookly/Features/home/data/data_source/local/home_local_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/core/api/api_services.dart';
import 'package:dio/dio.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  ApiServices apiServices = ApiServices(Dio());

  @override
  List<BookEntities> fetchFutureBooks() {
    // TODO: implement fetchFutureBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntities> fetchFutureNewestBooks() {
    // TODO: implement fetchFutureNewestBooks
    throw UnimplementedError();
  }
}
