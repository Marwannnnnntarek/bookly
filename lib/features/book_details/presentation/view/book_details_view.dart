import 'package:bookly/features/book_details/presentation/widget/book_details_app_bar.dart';
import 'package:bookly/features/book_details/presentation/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff100B20),
        appBar: BookDetailsAppBar(),
        body: const BookDetailsViewBody(),
      ),
    );
  }
}
