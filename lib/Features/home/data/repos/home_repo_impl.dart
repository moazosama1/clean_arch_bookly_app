import 'package:bookly/Features/home/data/data_source/local/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_source/remote/home_remote_data_source.dart';
import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<BookEntities>>> fetchFutureBooks() async {
    try {
      List<BookEntities> boxData;
      boxData = homeLocalDataSource.fetchFutureBooks();
      if (boxData.isNotEmpty) {
        return right(boxData);
      }
      boxData = await homeRemoteDataSource.fetchFutureBooks();
      return right(boxData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDio(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntities>>> fetchFutureNewestBooks() async {
    try {
      List<BookEntities> boxData;
      boxData = homeLocalDataSource.fetchFutureNewestBooks();
      if (boxData.isNotEmpty) {
        return right(boxData);
      }
      boxData = await homeRemoteDataSource.fetchFutureNewestBooks();
      return right(boxData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDio(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
