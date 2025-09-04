import 'package:bookly/core/utils/classes/app_assets.dart';
import 'package:bookly/core/utils/classes/app_routes.dart';
import 'package:bookly/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _logoAnimation;
  @override
  void initState() {
    super.initState();
    initLogoAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        SizedBox(height: 4),
        SlidingText(logoAnimation: _logoAnimation),
      ],
    );
  }

  void initLogoAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _logoAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      context.push(AppRoutes.home);
    });
  }
}
