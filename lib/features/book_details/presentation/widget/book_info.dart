import 'package:bookly/features/book_details/presentation/widget/book_info_image.dart';
import 'package:bookly/features/book_details/presentation/widget/book_info_rating.dart';
import 'package:bookly/features/book_details/presentation/widget/preview_button.dart';
import 'package:bookly/features/book_details/presentation/widget/price_button.dart';
import 'package:bookly/features/home/presentation/widget/newest_book_author.dart';
import 'package:bookly/features/home/presentation/widget/newest_book_title.dart';
import 'package:flutter/material.dart';

class BookInfo extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String price;
  final String rating;
  final String ratingsCount;

  const BookInfo({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.price,
    required this.rating,
    required this.ratingsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Book Image
          BookInfoImage(imageUrl: imageUrl),
          const SizedBox(height: 16),
          NewestBookTitle(title: title),
          const SizedBox(height: 8),
          NewestBookAuthor(author: author),
          const SizedBox(height: 8),
          BookInfoRating(rating: rating, ratingsCount: ratingsCount),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(children: [const PriceButton(), const PreviewButton()]),
          ),
        ],
      ),
    );
  }
}
