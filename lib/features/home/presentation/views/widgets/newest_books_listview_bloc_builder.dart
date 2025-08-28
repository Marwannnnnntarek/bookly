import 'package:bookly/core/utils/classes/app_styles.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListviewBlocBuilder extends StatelessWidget {
  const NewestBooksListviewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("Newest Books", style: AppStyles.textStyle18),
          ),
        ),
        BlocBuilder<NewestBooksCubit, NewestBooksState>(
          builder: (context, state) {
            if (state is NewestBooksLoading) {
              return const CircularProgressIndicator();
            } else if (state is NewestBooksSuccessful) {
              return NewestBooksListview();
            } else if (state is NewestBooksFailure) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(state.errMessage, style: AppStyles.textStyle14),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
