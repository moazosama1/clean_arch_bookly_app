import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FetchFutureBooksUseCase {
  final HomeRepo homeRepo;

  FetchFutureBooksUseCase({required this.homeRepo});
  Future<Either<Failure, List<BookEntities>>> fetchFutureBooks() {
    return homeRepo.fetchFutureBooks();
  }
}
