import 'package:bookly/core/utils/classes/app_assets.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListviewImage extends StatelessWidget {
  const FeaturedBooksListviewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
    );
  }
}
