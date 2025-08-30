part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

final class FeaturedBooksPaginationFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksPaginationFailure(this.errMessage);
}

final class FeaturedBooksSuccessful extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksSuccessful({required this.books});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

  FeaturedBooksFailure({required this.errMessage});
}
