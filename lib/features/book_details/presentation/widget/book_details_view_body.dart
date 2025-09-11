import 'package:bookly/features/book_details/presentation/widget/book_info.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BookInfo(
      imageUrl: 'assets/images/test2_image.jpg',
      title: 'Book Title',
      author: 'Book Author',
      price: '19.99',
      rating: '4.5',
      ratingsCount: '120',
    );
  }
}
