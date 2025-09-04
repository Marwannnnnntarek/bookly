import 'package:bookly/core/utils/classes/app_errors.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<AppErrors, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0});
  Future<Either<AppErrors, List<BookEntity>>> fetchNewestBooks();
  Future<Either<AppErrors, List<BookEntity>>> fetchSimilarBooks();
}
