import 'package:bookly/core/helpers/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestSellerPrice.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestSellerRating.dart';
import 'package:bookly/features/home/presentation/views/widgets/booksListViewItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetailsView');
      },
      child: SizedBox(
        height: 125,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              BooksListViewItem(),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        'Harry Potter and te Goblet of Fire',
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text('J.K. Rowling', style: Styles.textStyle14),
                    Row(
                      children: [
                        BestSellerPrice(),
                        Spacer(),
                        BestSellerRating(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
