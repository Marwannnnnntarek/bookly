import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_title.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_item_preview_button.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({
    super.key,
    required this.bookEntity,
  });
  final BookEntity? bookEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsitemImage(image: bookEntity?.image ?? ''),
        SizedBox(height: 16),
        BookDetailsItemTitle(title: bookEntity?.title ?? ''),
        SizedBox(height: 4),
        BookDetailsItemAuthor(author: bookEntity?.author ?? ''),
        SizedBox(height: 4),
        BookDetailsItemRating(),
        BookDetailsItemPreviewButton(books: bookEntity),
      ],
    );
  }
}
