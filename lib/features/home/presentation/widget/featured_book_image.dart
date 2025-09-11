import 'package:bookly/core/utils/url_launcher.dart';
import 'package:bookly/features/home/data/models/book_model/item.dart';
import 'package:flutter/material.dart';

class FeaturedBookImage extends StatelessWidget {
  const FeaturedBookImage({
    super.key,
    required this.books,
    required this.index,
  });

  final List<Item> books;
  final int index;

  @override
  Widget build(BuildContext context) {
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
  }
}
