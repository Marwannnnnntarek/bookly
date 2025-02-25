import 'package:bookly/constants.dart';
import 'package:bookly/core/helpers/assets.dart';
import 'package:bookly/features/home/presentation/views/homeView.dart';
import 'package:bookly/features/splash/presentation/views/widgets/slideAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> myAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    navigateAnimationToHome();
  }

  

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          slideAnimation(myAnimation: myAnimation)
          
        ],
      ),
    );
  }
  void navigateAnimationToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(
        () => const homeView(),
        transition: Transition.fade,
        duration: kTranstionDuration,
      );
      
    });
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    myAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,)
      .animate(animationController);
    animationController.forward();
  }
}

