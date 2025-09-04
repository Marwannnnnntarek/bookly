import 'package:bookly/core/utils/classes/app_errors.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImp(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<AppErrors, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0}) async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (books.isNotEmpty) {
        return right(books);
      }
      books =
          await homeRemoteDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      return right(books);
    } on DioException catch (dioError) {
      return left(AppErrors.fromDioError(dioError));
    } catch (e) {
      return left(AppErrors(
        type: ErrorType.server,
        message: e.toString(),
        exception: e,
      ));
    }
  }

  @override
  Future<Either<AppErrors, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } on DioException catch (dioError) {
      return left(AppErrors.fromDioError(dioError));
    } catch (e) {
      return left(AppErrors(
        type: ErrorType.server,
        message: e.toString(),
        exception: e,
      ));
    }
  }

  @override
  Future<Either<AppErrors, List<BookEntity>>> fetchSimilarBooks() async {
    try {
      List<BookEntity> books;
      books = await homeRemoteDataSource.fetchSimilarBooks();
      return right(books);
    } on DioException catch (dioError) {
      return left(AppErrors.fromDioError(dioError));
    } catch (e) {
      return left(AppErrors(
        type: ErrorType.server,
        message: e.toString(),
        exception: e,
      ));
    }
  }
}
