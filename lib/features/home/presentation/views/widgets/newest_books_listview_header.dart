import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:flutter/material.dart';

class NewestBooksListviewHeader extends StatelessWidget {
  const NewestBooksListviewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text("Newest Books", style: AppStyles.textStyle18),
      ),
    );
  }
}
