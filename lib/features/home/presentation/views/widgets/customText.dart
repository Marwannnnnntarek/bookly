import 'package:bookly/core/helpers/styles.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text('Best Seller', style: Styles.titleMeduim),
    );
  }
}
