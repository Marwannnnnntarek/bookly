import 'package:bookly/core/helpers/styles.dart';
import 'package:flutter/material.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text('Best Seller', style: Styles.textStyle18),
    );
  }
}
