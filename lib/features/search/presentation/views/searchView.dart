import 'package:bookly/features/search/presentation/views/widgets/searchViewBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SearchViewBody(),
    ));
  }
}