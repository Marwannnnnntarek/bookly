import 'package:bookly/features/home/presentation/widget/home_app_bar.dart';
import 'package:bookly/features/home/presentation/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff100B20),
        appBar: const HomeAppBar(),
        body: const HomeViewBody(),
      ),
    );
  }
}
