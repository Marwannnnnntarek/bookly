import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/book_details_view.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String splash = '/';
  static const String home = '/HomeView';
  static const String details = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashView()),
      GoRoute(path: home, builder: (context, state) => const HomeView()),
      GoRoute(
        path: details,
        builder: (context, state) {
          final book = state.extra as BookEntity?;
          return BookDetailsView(book: book);
        },
      ),
    ],
  );
}
