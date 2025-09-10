import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImp) : super(NewestBooksInitial());
  final HomeRepoImp homeRepoImp;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final result = await homeRepoImp.fetchNewestBooks();
    result.fold(
      (error) => emit(NewestBooksError(error.message)),
      (books) => emit(NewestBooksLoaded(books)),
    );
  }
}
