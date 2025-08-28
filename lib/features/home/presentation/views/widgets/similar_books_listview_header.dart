import 'package:flutter/material.dart';

class SimilarBooksListviewHeader extends StatelessWidget {
  const SimilarBooksListviewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'You Can Also Like',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
