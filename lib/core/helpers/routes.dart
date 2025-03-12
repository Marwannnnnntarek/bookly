import 'package:bookly/features/home/presentation/views/bookDetailsView.dart';
import 'package:bookly/features/home/presentation/views/homeView.dart';

import 'package:bookly/features/splash/presentation/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static final router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const SplashView()),
  GoRoute(path: '/HomeView', builder: (context, state) => const HomeView()),
  GoRoute(path: '/BookDetailsView', builder: (context, state) => const BookDetailsView())
  ],
);

}