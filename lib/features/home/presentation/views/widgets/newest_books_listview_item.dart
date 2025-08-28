import 'package:bookly/core/utils/classes/app_routes.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_item_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListviewItem extends StatelessWidget {
  const NewestBooksListviewItem(
      {super.key,
      required this.image,
      required this.title,
      required this.author});
  final String image, title, author;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          context.push(AppRoutes.details);
        },
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              NewestBooksListViewItemImage(
                image: image,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NewestBooksListviewItemTitle(
                      title: title,
                    ),
                    SizedBox(height: 4),
                    NewestBooksListviewItemAuthor(
                      author: author,
                    ),
                    Spacer(),
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
