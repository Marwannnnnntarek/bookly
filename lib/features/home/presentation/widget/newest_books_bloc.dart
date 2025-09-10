import 'package:bookly/features/home/presentation/view_model/cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/widget/newest_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksBloc extends StatelessWidget {
  const NewestBooksBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        } else if (state is NewestBooksLoaded) {
          return NewestBooksListView(books: state.books);
        } else if (state is NewestBooksError) {
          return _buildErrorWidget(context, state.message);
        } else {
          return const Center(child: Text('Unknown state'));
        }
      },
    );
  }

  Widget _buildErrorWidget(BuildContext context, String errorMessage) {
    IconData errorIcon;
    String title;
    Color iconColor;

    // Determine error type based on message content
    if (errorMessage.contains('No internet connection') ||
        errorMessage.contains('network')) {
      errorIcon = Icons.wifi_off;
      title = 'No Internet Connection';
      iconColor = Colors.orange;
    } else if (errorMessage.contains('timeout')) {
      errorIcon = Icons.timer_off;
      title = 'Request Timeout';
      iconColor = Colors.amber;
    } else if (errorMessage.contains('Server error')) {
      errorIcon = Icons.error_outline;
      title = 'Server Error';
      iconColor = Colors.red;
    } else if (errorMessage.contains('Invalid data')) {
      errorIcon = Icons.broken_image;
      title = 'Data Error';
      iconColor = Colors.purple;
    } else if (errorMessage.contains('No books found')) {
      errorIcon = Icons.book_outlined;
      title = 'No Books Available';
      iconColor = Colors.blue;
    } else {
      errorIcon = Icons.error;
      title = 'Error';
      iconColor = Colors.red;
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(errorIcon, color: iconColor, size: 64),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              errorMessage,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                context.read<NewestBooksCubit>().fetchNewestBooks();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
