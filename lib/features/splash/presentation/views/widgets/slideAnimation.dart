import 'package:flutter/material.dart';

class SlideAnimation extends StatelessWidget {
  const SlideAnimation({
    super.key,
    required this.myAnimation,
  });

  final Animation<Offset> myAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: myAnimation,
    builder: (context, _) {
      return SlideTransition(
        position: myAnimation,
        child: const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        ),
      );
    },);
  }
}
