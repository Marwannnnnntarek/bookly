import 'package:flutter/material.dart';
import 'package:myapp/features/start/presentations/views/widgets/start_view_body.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: StartViewBody(),
    ));
  }
}