import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:flutter/material.dart';

class NewestBooksListviewItemRating extends StatelessWidget {
  const NewestBooksListviewItemRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          Text('Free', style: AppStyles.textStyle18),
          Spacer(),
          Icon(Icons.star, color: Colors.yellow, size: 20),
          SizedBox(width: 2),
          Text(
            '4.8',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 2),
          Text(
            '(25709)',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
