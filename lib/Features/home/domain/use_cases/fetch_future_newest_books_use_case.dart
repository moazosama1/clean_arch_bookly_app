import 'package:bookly/Features/home/domain/entities/book_entities.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_case/no_param_use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFutureNewestBooksUseCase extends UseCase<List<BookEntities>> {
  final HomeRepo homeRepo;

  FetchFutureNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntities>>> call() async {
    return await homeRepo.fetchFutureNewestBooks();
  }
}
