import 'package:flutter/material.dart';
import 'package:myapp/features/splash3/presentation/views/widgets/splash3_view_body.dart';

class Splash3View extends StatelessWidget {
  const Splash3View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Splash3ViewBody(),
    ));
  }
}