import 'package:bookly/core/helpers/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BestSellerPriceAndRating extends StatelessWidget {
  const BestSellerPriceAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 €',
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Icon(
          FontAwesomeIcons.star,
          color: Colors.yellow,
          size: 14,
        ),
        SizedBox(width: 10),
        Text(
          '4.8',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}