import 'package:flutter/material.dart';

class BookDetailsItemTitle extends StatelessWidget {
  const BookDetailsItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'The Lord Of The Rings',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
