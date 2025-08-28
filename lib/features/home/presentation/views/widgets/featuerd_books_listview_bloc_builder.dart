import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuerdBooksListviewBlocBuilder extends StatelessWidget {
  const FeatuerdBooksListviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is FeaturedBooksFailure) {
            return Center(child: Text(state.errMessage));
          }

          if (state is FeaturedBooksSuccessful ||
              state is FeaturedBooksPaginationLoading) {
            final List<BookEntity> books = state is FeaturedBooksSuccessful
                ? state.books
                : (state as FeaturedBooksPaginationLoading).books;
            final bool isPaginating = state is FeaturedBooksPaginationLoading;
            final bool hasReachedEnd = state is FeaturedBooksSuccessful
                ? state.hasReachedEnd
                : (state as FeaturedBooksPaginationLoading).hasReachedEnd;
            return Stack(
              children: [
                FeaturedBooksListview(
                  books: books,
                ),
                if (isPaginating && !hasReachedEnd)
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                  ),
              ],
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
