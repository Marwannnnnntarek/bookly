import 'package:bookly/features/home/presentation/widget/newest_book_author.dart';
import 'package:bookly/features/home/presentation/widget/newest_book_image.dart';
import 'package:bookly/features/home/presentation/widget/newest_book_price_and_rating.dart';
import 'package:bookly/features/home/presentation/widget/newest_book_title.dart';
import 'package:flutter/material.dart';

class NewestBooksListItem extends StatelessWidget {
  const NewestBooksListItem({
    super.key,
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.price,
    required this.rating,
    required this.ratingsCount,
  });
  final String title, author, imageUrl, price, rating, ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120, // control row height
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Book Image
              NewestBookImage(imageUrl: imageUrl),
              const SizedBox(width: 16),
              // Book Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Title
                    NewestBookTitle(title: title),
                    const SizedBox(height: 4),
                    // Author
                    NewestBookAuthor(author: author),
                    // const Spacer(),
                    const SizedBox(height: 8),
                    NewestBookPriceAndRating(
                      price: price,
                      rating: rating,
                      ratingsCount: ratingsCount,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
