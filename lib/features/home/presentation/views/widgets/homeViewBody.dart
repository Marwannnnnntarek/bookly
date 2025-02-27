import 'package:bookly/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBooksListView.dart';
import 'package:bookly/features/home/presentation/views/widgets/customText.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        CustomBooksListView(),
        SizedBox(height: 45),
        CustomText(),
      ],
    );
  }
}
