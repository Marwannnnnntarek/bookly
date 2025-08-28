import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/newest_books_use_case.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());
  final NewestBooksUseCase newestBooksUseCase;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final result = await newestBooksUseCase.call();
    result.fold(
      (failure) {
        emit(
            NewestBooksFailure(errMessage: failure.message ?? 'Unknown error'));
      },
      (books) {
        emit(NewestBooksSuccessful(books: books));
      },
    );
  }
}
