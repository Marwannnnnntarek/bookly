import 'package:bookly/core/utils/classes/app_routes.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview_header.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_listview_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 16),
        child: Column(
          children: [
            SimilarBooksListviewHeader(),
            SizedBox(height: 8),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: ListView.separated(
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      context.push(AppRoutes.details, extra: books[index]);
                    },
                    child: SimilarBooksListviewImage(
                      image: books[index].image,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
