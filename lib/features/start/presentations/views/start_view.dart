import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/start/presentations/views/widgets/start_view_body.dart';

class StartView extends StatefulWidget {
  const StartView({super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      context.go('/Splash1View'); // ✅ GoRouter navigation
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: StartViewBody(),
    ));
  }
}