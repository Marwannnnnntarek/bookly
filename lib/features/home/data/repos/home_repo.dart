import 'package:bookly/core/utils/app_errors.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<AppError, List<Item>>> fetchNewestBooks();
}
