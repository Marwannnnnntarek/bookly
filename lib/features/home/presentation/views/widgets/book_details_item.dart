import 'package:bookly/features/home/presentation/views/widgets/book_details_item_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_title.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_preview_button.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsitemImage(),
        SizedBox(height: 16),
        BookDetailsItemTitle(),
        SizedBox(height: 4),
        BookDetailsItemAuthor(),
        SizedBox(height: 4),
        BookDetailsItemRating(),
        BookDetailsItemPreviewButton(),
      ],
    );
  }
}
