import 'package:bookly/features/book_details/presentation/widget/book_info.dart';
import 'package:bookly/features/book_details/presentation/widget/similar_books_list.dart';
import 'package:bookly/features/home/presentation/widget/home_header.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookInfo(
          imageUrl: 'assets/images/test2_image.jpg',
          title: 'Book Title',
          author: 'Book Author',
          price: '19.99',
          rating: '4.5',
          ratingsCount: '120',
        ),
        SizedBox(height: 40),
        HomeHeader(header: 'Similar Books'),
        SizedBox(height: 8),
        SimilarBooksList(),
      ],
    );
  }
}
