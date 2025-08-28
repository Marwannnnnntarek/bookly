import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/functions/setup_service_locator.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/featured_books_use_case.dart';
import 'package:bookly/features/home/domain/use_cases/newest_books_use_case.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kFeaturedBox);
  await Hive.openBox(kNewestBox);
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            FeaturedBooksUseCase(GetIt.instance<HomeRepoImp>()),
          ),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            NewestBooksUseCase(GetIt.instance<HomeRepoImp>()),
          ),
        ),
      ],
      child: Container(),
    );
  }
}
