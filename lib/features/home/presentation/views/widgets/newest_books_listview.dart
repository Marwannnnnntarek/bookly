import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_header.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListview extends StatelessWidget {
  const NewestBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewestBooksListviewHeader(),
        ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(width: 8),
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
