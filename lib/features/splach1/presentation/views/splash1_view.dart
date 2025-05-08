import 'package:flutter/material.dart';
import 'package:myapp/features/splach1/presentation/views/widgets/splash1_view_body.dart';

class Splash1View extends StatelessWidget {
  const Splash1View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Splash1ViewBody(),
    ));
  }
}