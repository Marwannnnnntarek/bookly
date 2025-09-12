import 'package:bookly/features/home/presentation/widget/featured_books_bloc.dart';
import 'package:bookly/features/home/presentation/widget/home_header.dart';
import 'package:bookly/features/home/presentation/widget/newest_books_bloc.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              FeaturedBooksBloc(),
              SizedBox(height: 40),
              HomeHeader(header: 'Newest Books'),
              SizedBox(height: 12),
              NewestBooksBloc(),
            ],
          ),
        ),
      ],
    );
  }
}
