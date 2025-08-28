import 'package:bookly/core/utils/classes/app_assets.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        children: [
          SizedBox(height: 24, child: Image.asset(AppAssets.logo)),
          const Spacer(),
          IconButton(
            onPressed: () {
              // TODO: Implement search functionality
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
