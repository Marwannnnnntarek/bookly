import 'package:bookly/features/home/presentation/views/widgets/booksListViewItem.dart';
import 'package:flutter/material.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemCount: 50,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: BooksListViewItem(),
          );
        },
      ),
    );
  }
}