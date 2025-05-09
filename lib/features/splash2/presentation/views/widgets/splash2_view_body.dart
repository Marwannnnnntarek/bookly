import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splash2ViewBody extends StatelessWidget {
  const Splash2ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff3D2DF6), Color(0xff6B5FF8)],
              ),
            ),
          ),

          // Foreground content
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/image 6.png',
                    width: double.infinity,
                    height: 517,
                    fit: BoxFit.fitWidth,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      'Discover +50 Million International Books Now',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 29, right: 29),
                    child: Text(
                      'Venture beyond borders with over 50 million books. Your next favorite read, from every corner of the world, awaits.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffE3E9ED).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 327,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to next screen
                         context.go('/Splash3View');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7A68FF),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // TODO: Skip to login
                       context.go('/LoginView');
                    },
                    child: Text(
                      'Skip to login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
