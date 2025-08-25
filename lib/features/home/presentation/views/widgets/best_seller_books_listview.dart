import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksListview extends StatelessWidget {
  const BestSellerBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return BestSellerBooksListviewItem();
      },
    );
  }
}
