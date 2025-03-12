import 'package:bookly/features/home/presentation/views/widgets/bestSellerListView.dart';

import 'package:bookly/features/home/presentation/views/widgets/homeAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/booksListView.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestSellerText.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              BooksListView(),
              SizedBox(height: 30),
              BestSellerText(),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
