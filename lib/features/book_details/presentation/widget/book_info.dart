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
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              height: 250,
              width: 160,
              fit: BoxFit.cover,
              errorBuilder:
                  (context, error, stackTrace) =>
                      const Icon(Icons.broken_image, size: 80),
            ),
          ),
          const SizedBox(height: 16),

          // Book Title
          NewestBookTitle(title: title),

          const SizedBox(height: 8),

          // Author Name
          NewestBookAuthor(author: author),
          const SizedBox(height: 8),
          BookInfoRating(rating: rating, ratingsCount: ratingsCount),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                // Price button
                PriceButton(),
                // Preview button
                PreviewButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
