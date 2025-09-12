import 'package:bookly/features/home/presentation/view_model/cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/widget/loading_newest_books.dart';
import 'package:bookly/features/home/presentation/widget/newest_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksBloc extends StatelessWidget {
  const NewestBooksBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const LoadingNewestBooks();
          // const Center(
          //   child: CircularProgressIndicator(color: Colors.white),
          // );
        } else if (state is NewestBooksLoaded) {
          return NewestBooksListView(books: state.books);
        } else if (state is NewestBooksError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('Unknown state'));
        }
      },
    );
  }
}
