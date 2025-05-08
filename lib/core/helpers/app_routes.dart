import 'package:go_router/go_router.dart';
import 'package:myapp/features/splach1/presentation/views/splash1_view.dart';
import 'package:myapp/features/splash2/presentation/views/splash2_view.dart';
import 'package:myapp/features/splash3/presentation/views/splash3_view.dart';
import 'package:myapp/features/start/presentations/views/start_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const StartView()),
    GoRoute(path: '/Splash1View', builder: (context, state) => const Splash1View()),
    GoRoute(path: '/Splash2View', builder: (context, state) => const Splash2View()),
    GoRoute(path: '/Splash3View', builder: (context, state) => const Splash3View()),
  ],
);