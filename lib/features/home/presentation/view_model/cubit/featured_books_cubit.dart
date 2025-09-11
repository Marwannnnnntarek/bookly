import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepoImp) : super(FeaturedBooksInitial());
  final HomeRepoImp homeRepoImp;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final result = await homeRepoImp.fetchFeaturedBooks();
    result.fold(
      (error) => emit(FeaturedBooksError(error.message)),
      (books) => emit(FeaturedBooksLoaded(books)),
    );
  }
}
