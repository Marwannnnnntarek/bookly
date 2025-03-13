import 'package:bookly/features/home/presentation/views/widgets/booksAction.dart';
import 'package:flutter/material.dart';

class Actionss extends StatelessWidget {
  const Actionss({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: BooksAction(
              background_color: Colors.white,
              text_color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              text: '19.99 €',
            ),
          ),
          Expanded(
            child: BooksAction(
              background_color: Colors.red,
              text_color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
