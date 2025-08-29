import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuerdBooksListviewBlocBuilder extends StatefulWidget {
  const FeatuerdBooksListviewBlocBuilder({super.key});

  @override
  State<FeatuerdBooksListviewBlocBuilder> createState() =>
      _FeatuerdBooksListviewBlocBuilderState();
}

class _FeatuerdBooksListviewBlocBuilderState
    extends State<FeatuerdBooksListviewBlocBuilder> {
  List<BookEntity> books = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccessful) {
          books.addAll(state.books);
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksLoading) {
          CircularProgressIndicator();
        } else if (state is FeaturedBooksSuccessful ||
            state is FeaturedBooksPaginationLoading) {
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
