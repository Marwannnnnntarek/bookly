import 'package:bookly/core/utils/app_errors.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class NewestBooksUseCase {
  final HomeRepo homeRepo;

  NewestBooksUseCase(this.homeRepo);

  Future<Either<AppErrors, List<BookEntity>>> call() async {
    return await homeRepo.fetchNewestBooks();
  }
}
