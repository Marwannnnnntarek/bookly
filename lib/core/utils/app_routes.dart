import 'package:bookly/features/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String homeRoute = '/';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: homeRoute, builder: (context, state) => const HomeView()),
    ],
  );
}
