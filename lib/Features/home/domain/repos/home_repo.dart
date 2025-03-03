import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntities>>> fetchFutureBooks();
  Future<Either<Failure, List<BookEntities>>> fetchFutureNewestBooks();
}
