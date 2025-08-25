import 'package:bookly/features/home/presentation/views/widgets/book_details_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_rate.dart';
import 'package:bookly/features/home/presentation/views/widgets/preview_button.dart';
import 'package:flutter/material.dart';

class BookDetailsItems extends StatelessWidget {
  const BookDetailsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookDetailsImage(),
        SizedBox(height: 16),
        Text(
          'The Lord Of The Rings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Opacity(
          opacity: 0.5,
          child: Text(
            'J.R.R TOLKIEN',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 4),
        BookDetailsRate(),
        PreviewButton(),
      ],
    );
  }
}
