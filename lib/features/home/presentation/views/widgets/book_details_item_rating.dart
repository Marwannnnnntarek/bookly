import 'package:flutter/material.dart';

class BookDetailsItemRating extends StatelessWidget {
  const BookDetailsItemRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.yellow, size: 20),
        SizedBox(width: 2),
        Text(
          '4.8',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 2),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(25709)',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
