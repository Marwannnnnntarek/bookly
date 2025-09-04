import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/similar_books_use_case.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.similarBooksUseCase) : super(SimilarBooksInitial());
  final SimilarBooksUseCase similarBooksUseCase;
  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    final result = await similarBooksUseCase.call();
    result.fold(
      (failure) {
        emit(SimilarBooksFailure(
            errMessage: failure.message ?? 'Unknown error'));
      },
      (books) {
        emit(SimilarBooksSuccessful(books: books));
      },
    );
  }
}
