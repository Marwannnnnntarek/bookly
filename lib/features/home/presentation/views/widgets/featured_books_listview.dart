import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListview extends StatelessWidget {
  const FeaturedBooksListview({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return FeaturedBooksListviewImage(
            image: books[index].image,
          );
        },
      ),
    );
  }
}
