import 'package:bookly/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBooksListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), CustomBooksListView()]);
  }
}
