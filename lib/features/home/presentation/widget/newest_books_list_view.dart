import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:bookly/features/home/presentation/widget/newest_books_list_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key, required this.books});
  final List<Item> books;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 16),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final book = books[index];
          return NewestBooksListItem(
            title: book.volumeInfo!.title ?? 'No Title',
            author: book.volumeInfo!.authors?.first ?? 'No Author',
            imageUrl: book.volumeInfo!.imageLinks?.thumbnail ?? 'No Image',
            price: book.saleInfo!.listPrice?.amount?.toString() ?? 'Free',
            rating: book.volumeInfo!.averageRating?.toString() ?? '0.0',
            ratingsCount: book.volumeInfo!.ratingsCount?.toString() ?? '0',
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 24);
        },
        itemCount: books.length,
      ),
    );
  }
}
