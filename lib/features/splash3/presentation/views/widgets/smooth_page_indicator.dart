import 'package:flutter/material.dart';
import 'package:myapp/features/splach1/presentation/views/splash1_view.dart';
import 'package:myapp/features/splash2/presentation/views/splash2_view.dart';
import 'package:myapp/features/splash3/presentation/views/splash3_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                Splash1View(),
                Splash2View(),
                Splash3View(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                spacing: 16,
                dotColor: Colors.grey,
                activeDotColor: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}