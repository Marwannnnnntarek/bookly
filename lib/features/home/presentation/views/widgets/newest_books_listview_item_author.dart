import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:flutter/material.dart';

class NewestBooksListviewItemAuthor extends StatelessWidget {
  const NewestBooksListviewItemAuthor({
    super.key,
    required this.author,
  });
  final String author;
  @override
  Widget build(BuildContext context) {
    return Text(
      author,
      style: AppStyles.textStyle14,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
