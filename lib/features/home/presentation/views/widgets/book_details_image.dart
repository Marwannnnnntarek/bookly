import 'package:bookly/core/utils/classes/app_assets.dart';
import 'package:flutter/material.dart';

class BookDetailsImage extends StatelessWidget {
  const BookDetailsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
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
