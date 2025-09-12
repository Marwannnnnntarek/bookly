import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/widget/featured_books_list_view.dart';
import 'package:bookly/features/home/presentation/widget/loading_featured_books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksBloc extends StatelessWidget {
  const FeaturedBooksBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return const LoadingFeaturedBooks();
          // const Center(
          //   child: CircularProgressIndicator(color: Colors.white),
          // );
        } else if (state is FeaturedBooksLoaded) {
          return FeaturedBooksListView(books: state.books);
        } else if (state is FeaturedBooksError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('Unknown state'));
        }
      },
    );
  }
}
