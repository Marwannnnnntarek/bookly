import 'package:bookly/core/helpers/assets.dart';
import 'package:bookly/core/helpers/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          // used media quiry to make it more responsive with the of the screen
          height: 120,
          child: AspectRatio(
            aspectRatio: 1.8 / 3,
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
          ),
        ),
        SizedBox(width: 30),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Text(
                'Harry Potter and te Goblet of Fire',
                style: Styles.textStyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
