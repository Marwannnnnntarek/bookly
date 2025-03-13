import 'package:bookly/core/helpers/styles.dart';
import 'package:flutter/material.dart';

class BestSellerPrice extends StatelessWidget {
  const BestSellerPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '19.99 €',
      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
