import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview_bloc_builder.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, this.book});
  final BookEntity? book;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsAppBar(),
              BookDetailsItem(bookEntity: book),
              SimilarBooksListviewBlocBuilder()
            ],
          ),
        ),
      ],
    );
  }
}
