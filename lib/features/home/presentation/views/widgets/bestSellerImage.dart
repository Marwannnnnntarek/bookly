import 'package:bookly/core/helpers/assets.dart';
import 'package:flutter/material.dart';

class BestSellerImage extends StatelessWidget {
  const BestSellerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 3,
      child: Container(
        height: 100,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
