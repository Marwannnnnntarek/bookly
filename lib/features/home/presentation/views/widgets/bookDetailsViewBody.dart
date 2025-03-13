import 'package:bookly/core/helpers/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/actions.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestSellerRating.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookDetailsAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/booksListViewItem.dart';
import 'package:bookly/features/home/presentation/views/widgets/simillarBooksListView.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.28,
                ),
                child: BooksListViewItem(),
              ),
              SizedBox(height: 20),
              Text('The Jungle Book', style: Styles.textStyle30),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(color: Colors.grey),
              ),
              SizedBox(height: 5),
              BestSellerRating(),
              SizedBox(height: 5),
              Actionss(),
              Expanded(child: SizedBox(height: 15)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('You can also like', style: Styles.textStyle18),
              ),
              SizedBox(height: 10),
              SimillarBooksListView(),
            ],
          ),
        ),
      ],
    );
  }
}
