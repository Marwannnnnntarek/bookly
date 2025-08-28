import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:flutter/material.dart';

class NewestBooksListviewItemAuthor extends StatelessWidget {
  const NewestBooksListviewItemAuthor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('J.K Rowling', style: AppStyles.textStyle14);
  }
}
