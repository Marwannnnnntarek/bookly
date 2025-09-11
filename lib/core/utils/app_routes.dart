import 'package:bookly/features/book_details/presentation/view/book_details_view.dart';
import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String bookDetailsRoute = '/';
  static const String homeRoute = '/HomeView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: homeRoute, builder: (context, state) => const HomeView()),
      GoRoute(
        path: bookDetailsRoute,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
