import 'package:bookly/features/home/presentation/widget/newest_books_list_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return NewestBooksListItem(
          title: 'The Lord of the Rings',
          author: 'J.R.R. Tolkien',
          imageUrl: 'assets/images/test2_image.jpg',
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: 10,
    );
  }
}
