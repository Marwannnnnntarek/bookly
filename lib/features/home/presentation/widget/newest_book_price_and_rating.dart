import 'package:flutter/material.dart';

class NewestBookPriceAndRating extends StatelessWidget {
  const NewestBookPriceAndRating({
    super.key,
    required this.price,
    required this.rating,
    required this.ratingsCount,
  });

  final String price;
  final String rating;
  final String ratingsCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Icon(Icons.star, color: Colors.amber, size: 16),
        const SizedBox(width: 4),
        Text(
          rating,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '($ratingsCount)',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
        ),
        const SizedBox(width: 24),
      ],
    );
  }
}
