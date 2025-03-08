import 'package:bookly/Features/home/data/data_source/local/home_local_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_services.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/adapters.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  ApiServices apiServices = ApiServices(Dio());

  @override
  List<BookEntities> fetchFutureBooks() {
    var box = Hive.box<BookEntities>(kFutureBox);
    return box.values.toList();
  }

  @override
  List<BookEntities> fetchFutureNewestBooks() {
    var box = Hive.box<BookEntities>(kNewestBox);
    return box.values.toList();
  }
}
