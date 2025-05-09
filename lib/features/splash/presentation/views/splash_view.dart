import 'package:flutter/material.dart';
import 'package:myapp/features/splach1/presentation/views/splash1_view.dart';
import 'package:myapp/features/splash2/presentation/views/splash2_view.dart';
import 'package:myapp/features/splash3/presentation/views/splash3_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Fullscreen swipeable pages
          PageView(
            controller: _controller,
            children: [Splash1View(), Splash2View(), Splash3View()],
          ),

          // Dot indicator in the vertical center or wherever you like
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2 - 180,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 12,
                spacing: 10,
                dotColor: Color(0xff7A68FF),
                activeDotColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
