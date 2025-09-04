import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListviewBlocBuilder extends StatelessWidget {
  const SimilarBooksListviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksLoading) {
          return const CircularProgressIndicator();
        } else if (state is SimilarBooksSuccessful) {
          return SimilarBooksListView(
            books: state.books,
          );
        } else if (state is SimilarBooksFailure) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(state.errMessage, style: AppStyles.textStyle14),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
