import 'package:bookly/features/home/presentation/views/widgets/featuerd_books_listview_bloc_builder.dart';
import 'package:bookly/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              HomeAppBar(),
              FeatuerdBooksListviewBlocBuilder(),
              NewestBooksListviewBlocBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
