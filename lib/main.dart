import 'package:bookly/core/utils/set_up.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImp>())..fetchNewestBooks(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
