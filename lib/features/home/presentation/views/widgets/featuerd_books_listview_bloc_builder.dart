import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatuerdBooksListviewBlocBuilder extends StatelessWidget {
  const FeatuerdBooksListviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
          if (state is FeaturedBooksLoading) {
            CircularProgressIndicator();
          } else if (state is FeaturedBooksSuccessful) {
            return FeaturedBooksListview();
          } else if (state is FeaturedBooksFailure) {
            return Center(child: Text(state.errMessage));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
