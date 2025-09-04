import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuerdBooksListviewBlocConsumer extends StatefulWidget {
  const FeatuerdBooksListviewBlocConsumer({super.key});

  @override
  State<FeatuerdBooksListviewBlocConsumer> createState() =>
      _FeatuerdBooksListviewBlocConsumerState();
}

class _FeatuerdBooksListviewBlocConsumerState
    extends State<FeatuerdBooksListviewBlocConsumer> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccessful) {
          books.addAll(state.books);
        }
        if (state is FeaturedBooksPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                state.errMessage,
                style: TextStyle(color: Colors.white),
              )));
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          return FeaturedBooksListviewIndicator();
        } else if (state is FeaturedBooksSuccessful ||
            state is FeaturedBooksPaginationLoading ||
            state is FeaturedBooksPaginationFailure) {
          return FeaturedBooksListview(
            books: books,
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
