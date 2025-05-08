import 'package:go_router/go_router.dart';
import 'package:myapp/features/start/presentations/views/start_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const StartView()),
    
  ],
);