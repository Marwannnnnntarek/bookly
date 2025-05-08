import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff6B5FF8),
      child: Center(
        child: Text(
          'Bookly',
          style: TextStyle(
            fontSize: 78,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
