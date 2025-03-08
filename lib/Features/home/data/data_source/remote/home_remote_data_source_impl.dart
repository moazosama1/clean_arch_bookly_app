import 'package:bookly/Features/home/data/data_source/remote/home_remote_data_source.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_services.dart';
import 'package:bookly/core/functions/save_all_data.dart';
import 'package:dio/dio.dart';

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  ApiServices apiServices = ApiServices(Dio());
  @override
  Future<List<BookEntities>> fetchFutureBooks() async {
    var data = await apiServices.get(
        endPoint: "volumes?q=subject:anime&orderBy:newest");
    var result = BookModel.fromJson(data);
    List<BookEntities> books = result.items?.toList() ?? [];
    saveBoxData(books, kFutureBox);
    return books;
  }

  @override
  Future<List<BookEntities>> fetchFutureNewestBooks() async {
    var data = await apiServices.get(
        endPoint: "volumes?q=subject:action&orderBy:newest");
    var result = BookModel.fromJson(data);
    List<BookEntities> books = result.items?.toList() ?? [];
    saveBoxData(books, kNewestBox);
    return books;
  }
}
