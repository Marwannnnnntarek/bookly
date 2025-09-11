import 'package:bookly/core/utils/url_launcher.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<Item> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // height for book cards
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 2 / 3, // typical book cover ratio
              child: InkWell(
                onTap: () {
                  UrlLauncher.openBookLink(context, books[index]);
                },
                child: Image.network(
                  books[index].volumeInfo!.imageLinks?.thumbnail ?? '',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
