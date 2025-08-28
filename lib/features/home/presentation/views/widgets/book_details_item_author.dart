import 'package:flutter/material.dart';

class BookDetailsItemAuthor extends StatelessWidget {
  const BookDetailsItemAuthor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Text(
        'J.R.R TOLKIEN',
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
      ),
    );
  }
}
