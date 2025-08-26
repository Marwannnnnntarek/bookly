import 'package:bookly/core/utils/app_errors.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<AppErrors, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<AppErrors, List<BookEntity>>> fetchNewestBooks();
}
