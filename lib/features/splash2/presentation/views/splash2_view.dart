import 'package:flutter/material.dart';
import 'package:myapp/features/splash2/presentation/views/widgets/splash2_view_body.dart';

class Splash2View extends StatelessWidget {
  const Splash2View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Splash2ViewBody(),
    ));
  }
}