import 'package:bookly/core/utils/classes/app_assets.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListviewItem extends StatelessWidget {
  const FeaturedBooksListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
