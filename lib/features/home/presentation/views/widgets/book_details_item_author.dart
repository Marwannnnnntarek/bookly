import 'package:flutter/material.dart';

class BookDetailsItemAuthor extends StatelessWidget {
  const BookDetailsItemAuthor({
    super.key,
    required this.author,
  });
  final String author;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Text(
        author,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      ),
    );
  }
}
