import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef OnPaginationCallback = void Function();

class FeaturedBooksListview extends StatefulWidget {
  const FeaturedBooksListview({
    super.key,
    required this.books,
  });

  final List<BookEntity> books;

  @override
  State<FeaturedBooksListview> createState() => _FeaturedBooksListviewState();
}

class _FeaturedBooksListviewState extends State<FeaturedBooksListview> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients || widget.books.isEmpty) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    // Trigger pagination when reaching 70% of the scrollable area
    if (currentScroll >= maxScroll * 0.7) {
      BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        controller: _scrollController,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          return FeaturedBooksListviewImage(
            image: widget.books[index].image,
          );
        },
      ),
    );
  }
}
