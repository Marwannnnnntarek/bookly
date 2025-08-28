import 'package:bookly/core/utils/classes/app_routes.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListviewItem extends StatelessWidget {
  const NewestBooksListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          context.push(AppRoutes.details);
        },
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              NewestBooksListViewItemImage(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewestBooksListviewItemTitle(),
                    SizedBox(height: 4),
                    NewestBooksListviewItemAuthor(),
                    SizedBox(height: 4),
                    NewestBooksListviewItemRating(),
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
