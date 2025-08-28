part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccessful extends FeaturedBooksState {
  final List<BookEntity> books;
  final bool hasReachedEnd;

  FeaturedBooksSuccessful({required this.books, this.hasReachedEnd = false});
}

final class FeaturedBooksPaginationLoading extends FeaturedBooksState {
  final List<BookEntity> books;
  final bool hasReachedEnd;

  FeaturedBooksPaginationLoading(
      {required this.books, this.hasReachedEnd = false});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure({required this.errMessage});
}
