import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/featured_books_use_case.dart';
import 'package:meta/meta.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FeaturedBooksUseCase featuredBooksUseCase;
  int _currentPage = 0;
  bool _isLoading = false;
  final List<BookEntity> _allBooks = [];
  bool _hasReachedEnd = false;

  Future<void> fetchFeaturedBooks({int? pageNumber}) async {
    if (_isLoading || _hasReachedEnd) return;
    _isLoading = true;

    final int pageToLoad = pageNumber ?? _currentPage;
    if (_allBooks.isNotEmpty) {
      emit(FeaturedBooksPaginationLoading(
          books: List<BookEntity>.unmodifiable(_allBooks),
          hasReachedEnd: _hasReachedEnd));
    } else {
      emit(FeaturedBooksLoading());
    }
    final result = await featuredBooksUseCase.call(pageToLoad);
    result.fold(
      (failure) {
        _isLoading = false;
        emit(FeaturedBooksFailure(
            errMessage: failure.message ?? 'Unknown error'));
      },
      (books) {
        _isLoading = false;
        if (books.isNotEmpty) {
          _currentPage = pageToLoad + 1;
          final Set<String> existingIds =
              _allBooks.map((b) => b.entityID).toSet();
          for (final book in books) {
            if (!existingIds.contains(book.entityID)) {
              _allBooks.add(book);
            }
          }
        } else {
          _hasReachedEnd = true;
        }
        emit(FeaturedBooksSuccessful(
            books: List<BookEntity>.unmodifiable(_allBooks),
            hasReachedEnd: _hasReachedEnd));
      },
    );
  }
}
