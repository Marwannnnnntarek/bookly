import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Newest Books", style: AppStyles.textStyle18),
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewestBooksListviewItem();
          },
        ),
      ],
    );
  }
}
