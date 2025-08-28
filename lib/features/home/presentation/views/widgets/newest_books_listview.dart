import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_header.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewestBooksListviewHeader(),
        ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(
            height: 8,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: books.length,
          itemBuilder: (context, index) {
            return NewestBooksListviewItem(
              image: books[index].image,
              title: books[index].title,
              author: books[index].author,
            );
          },
        ),
      ],
    );
  }
}
