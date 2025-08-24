import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.logoAnimation});

  final Animation<Offset> logoAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: logoAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: logoAnimation,
          child: const Text('Read Free Books', textAlign: TextAlign.center),
        );
      },
    );
  }
}
