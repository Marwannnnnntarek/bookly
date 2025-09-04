part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccessful extends SimilarBooksState {
  final List<BookEntity> books;

  SimilarBooksSuccessful({required this.books});
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;

  SimilarBooksFailure({required this.errMessage});
}
