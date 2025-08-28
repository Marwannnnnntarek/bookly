import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:flutter/material.dart';

class NewestBooksListviewItemTitle extends StatelessWidget {
  const NewestBooksListviewItemTitle({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Text(
        title,
        style: AppStyles.textStyle18,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
