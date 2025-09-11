part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksLoaded extends FeaturedBooksState {
  final List<Item> books;

  FeaturedBooksLoaded(this.books);
}

final class FeaturedBooksError extends FeaturedBooksState {
  final String message;

  FeaturedBooksError(this.message);
}
