part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksLoaded extends NewestBooksState {
  final List<Item> books;

  NewestBooksLoaded(this.books);
}

final class NewestBooksError extends NewestBooksState {
  final String message;

  NewestBooksError(this.message);
}
